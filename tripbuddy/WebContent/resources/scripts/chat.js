var chatform=null;
var username=null;
var group=null;
var userlist=null;
var chatpanel = null;
var stompClient = null;
var chatinput =null;
var noti = null;
var admin=null;
var uid=null;
var friendlist = 'http://localhost:8080/tripbuddy/chatroom/fetchlist/';
var oldmsgs ='http://localhost:8080/tripbuddy/chatroom/oldmsgs/';
var grpAdmin='http://localhost:8080/tripbuddy/chatroom/getAdminId/';
var gethotel='http://localhost:8080/tripbuddy/chatroom/getHotels/';
var context = 'http://localhost:8080/tripbuddy/profile/';
function init(){	
	userlist= get("#userlist");
	chatpanel= get("#chat");
	chatform= get("#chat-inputarea");
	chatinput = get("#chat-input");
	noti = get("#notification");
		chatform.addEventListener("submit", function (event) {
	    event.preventDefault();
	    var msgText = chatinput.value;
	    var time = new Date();
	    if (!msgText) return;
	    appendMessage(username, msgText, "me", time,'CHAT');
	    sendMessage('CHAT',username,msgText,group,time);	    
	    chatinput.value = "";
	     
	  });
	
    var socket = new SockJS('/tripbuddy/chat');
    console.log(socket);
                stompClient = Stomp.over(socket);
                stompClient.connect({}, function(frame) {
                	                  
                  sendMessage('JOIN',username,'',group,'');
                  stompClient.subscribe('/topic/room/'+group, function(Response) {
                      var json = JSON.parse(Response.body);
                    if(json.from!==username){
                    	if(json.type==='CHAT')noti.play();
                    	onlineStatus(json.from);
                    	appendMessage(json.from,json.content,"you",json.time,json.type);
                    }
                });
                });  
     
     $.get(grpAdmin+group, function(response) {   	 
		   admin= response;
		   $.get( friendlist+group, function(response) {
		 	  addUserList(response);
 	});});
     
     $.get( oldmsgs+group, function(response) {
    	 console.log(response);
   	  showMsgs(response);
   	});
}
	function getHotels(){		
		$.get(gethotel+group, function(response) {	    	
	   	  showMsgs(response);
	   	});
		
		
	}
	function RemoveSendButton(){
		var status="completed";
		$('#chat-inputarea').css('display','none');
		$('#chat').css('height','450px');
		$('#footer').css('height','60px');
		get('#footer').insertAdjacentHTML("beforeend",'<div style="text-align:center;color:#8f8f8f;height:30px;">You cant send message to completed trip.</div>');
	}
	function showMsgs(oldchat){
		if(oldchat.length>10) $("#totalmsgs").html("Already "+oldchat.length+" messages");
		 for(i=0;i<oldchat.length;i++){
			 if(oldchat[i].from===username){
				 appendMessage('you',oldchat[i].content,'me',oldchat[i].time,oldchat[i].type);
			 }
			 else{
				 appendMessage(oldchat[i].from,oldchat[i].content,'you',oldchat[i].time,oldchat[i].type);
			 }
			 
		 }		
	}
  function appendMessage(from,msgText,side,time,type){
	  if(time==="current"){
		  time = new Date();
		  console.log(msgText)
	  }
	  
      var youMsg="<li class='you'><div class='entete'> <span class='status green'></span><h2>"+from+" </h2>&nbsp;<h3> "+
          formatTime(time)+"</h3> </div>  <div class='triangle'></div> <div class='message'>"+
              msgText+"</div></li>";

     var meMsg="<li class='me'><div class='entete'> <span class='status blue'></span><h2>You</h2>&nbsp;<h3>"+
     formatTime(time)+"</h3> </div>  <div class='triangle'></div> <div class='message'>"+
         msgText+"</div></li>";         
        if(type==='CHAT'){
        	
            if(side==='you'){chatpanel.insertAdjacentHTML("beforeend", youMsg);}
            else{chatpanel.insertAdjacentHTML("beforeend", meMsg);}   
            chatpanel.scrollTop += 500;            
        }
        if(type==='JOIN'){
        	onlineStatus(from);
        }
  }
  function onlineStatus(from){
	var text =  removeSpace(from);
	 var status = $("#"+text+"data div h3");
	status.html('<h3><span class="status blue"></span>&nbsp;online</h3>');
	 
	 }

  function changeUi(){
	  if($(window).width()<735){
		  $('#userAside').css('width','90px');
		  $('#userAside li div').css('display','none');
		  $('#users h2').html('');
		  $('#userChat header').css('width','350px');
		  $('#userChat footer').css('width','350px');
		  $('#userChat ul').css('width','350px');
	  }
	  else{
		  $('#userAside').css('width','260px');
		  $('#userAside li div').css('display','inline-block');
		  $('#users h2').html('TRIPBUDDIES');
	  }
	  console.log($(window).width());
  }
  function sendMessage(type,from,msgText,to,time){
	 
    stompClient.send("/app/chat.msg", {}, 
    JSON.stringify({'type':type, 'content':msgText,'from':from,'to':to , 'time':time}));
  }
  
  function addUserList(users){
	 
	 
	  for(i=0;i<users.length;i++){
		 var name=users[i].uname;
		
		  if(name===username)name=' You';
		  if(users[i].uname===admin.uname)name+='<p style="font-size:12px;float:right;">&nbsp;(Admin)</p>';
		  
		   var data = '<li id="'+removeSpace(users[i].uname)+
		   				'data" onclick="showlinks(this);"><a href="'+context+users[i].uid+'"><img src="'+smallPic(users[i].upic)+
		   				'" alt="View Profile" class="userimage"></a><div><h2 >'+name+'</h2><h3>'+
				'<span class="status orange"></span>&nbsp;offline</h3></div></li>'+getLinks(users[i]);
	  userlist.insertAdjacentHTML("beforeend", data);
	  }
	  onlineStatus(username);
  }


// Utils
  
  function getLinks(user)
  {
	  if(uid===admin.uid){
	  if(user.uid===admin.uid)
			return	'<div id="'+removeSpace(user.uname)+'links" class="links"><li><a href="'+context+user.uid+'">View Profile</a></li><li><a href="#" onclick="removeGrp()">Abandon your plan</a></li></div>';
	 
	  else
			return	'<div id="'+removeSpace(user.uname)+'links" class="links"><li><a href="'+context+user.uid+'">View Profile</a></li><li><a href="#" onclick="removeYurself('+user.uid+')">Remove this user</a></li></div>';
	  
	  }
	  else {
		  if(user.uid===uid)
		return	'<div id="'+removeSpace(user.uname)+'links" class="links"><li><a href="'+context+user.uid+'">View Profile</a></li><li><a href="#" onclick="removeYurself('+user.uid+')">Nnot intrested? </a></li></div>';
		  else
			  return	'<div id="'+removeSpace(user.uname)+'links" class="links"><li><a href="'+context+user.uid+'">View Profile</a></li>';
	  }
  }
  
  
  
  function smallPic(link){
	  return link.substr(0,link.indexOf('?'))+"?type=small";
  }
  
  function showlinks(tag){
	  var height = 'auto';
	  var tagId="#"+((tag.id).replace('data',''))+"links";
	  height= (($(tagId).css('height'))==='0px') ? '70px':'0px';
	  $('.links').css('height','0px');
	  $(tagId).css('height',height);
  }
function get(selector) {var root = arguments.length > 1 && arguments[1] !== undefined ? arguments[1] : document;
    return root.querySelector(selector);
  }
function removeSpace(String){
	return String.replace(/ /g,'');
}
  function formatTime(time){
      var time = new Date(time);
      var now = new Date();
      var t12 = tConv24(time.getHours()+":"+time.getMinutes());
      if(time.getYear()===now.getYear()){
      if(now.getDay()===time.getDay() && now.getMonth()===time.getMonth()){
          return t12+", Today";
      }  
      else if((now.getDay()-1)===time.getDay() && now.getMonth()===time.getMonth()){
    	  return t12+", Yesterday";
      }
      else {
          return t12+", "+time.getDate()+"-"+(time.getMonth()+1);
      }
      }
      else{
    	  return t12+", "+time.getDate()+"-"+(time.getMonth()+1)+"-"+(time.getFullYear().toString()).substr(2,3);
      }
      }
  
  
      function tConv24(time24) {
    	  var ts = time24;    	  
    	  var H = +ts.substr(0, 2);
    	  var m = ts.substr(3, 4);
    	  var h = (H % 12) || 12;
    	  h = (h < 10)?("0"+h):h;  //  leading 0 at the left for 1 digit hours
    	  m = (m < 10)?("0"+m):m;
    	  var ampm = H < 12 ? " AM" : " PM";
    	  ts = h +':'+ m + ampm;
    	  return ts;
    	};

  
    
