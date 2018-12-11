var chatform=null;
var username=null;
var group=null;
var userlist=null;
var chatpanel = null;
var stompClient = null;
var chatinput =null;
var noti = null;
var friendlist = 'http://localhost:8080/tripbuddy/chatroom/fetchlist/1';
var oldmsgs ='http://localhost:8080/tripbuddy/chatroom/oldmsgs/1';
function init(){
	userlist= get("#userlist");
	chatpanel= get("#chat");
	chatform= get("#chat-inputarea");
	chatinput = get("#chat-input");
	username=get("#from").value;
	group=get("#group").value;
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
                	
                	
                    console.log('Connected: ' + frame);
                  
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
     $.get( friendlist, function(response) {
                	  addUserList(response);
                	});
     $.get( oldmsgs, function(response) {
    	 console.log(response);
   	  showMsgs(response);
   	});
}

	function showMsgs(oldchat){
		
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

  function sendMessage(type,from,msgText,to,time){
	 
    stompClient.send("/app/chat.msg", {}, 
    JSON.stringify({'type':type, 'content':msgText,'from':from,'to':to , 'time':time}));
  }
  
  function addUserList(users){
	 
	  for(i=0;i<users.length;i++){
	  var data = '<li id="'+removeSpace(users[i].uname)+'data"><img src="'+users[i].upic+'" alt="" class="userimage"><div><h2 >'+users[i].uname+'</h2><h3>'+
				'<span class="status orange"></span>&nbsp;offline</h3></div></li>';
	  userlist.insertAdjacentHTML("beforeend", data);
	  }
	  onlineStatus(username);
  }


// Utils
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
      if(now.getDay()===time.getDay() && now.getMonth()===time.getMonth()){
          return t12+", Today";
      }  
      else if((now.getDay()-1)===time.getDay() && now.getMonth()===time.getMonth()){
    	  return t12+", Yesterday";
      }
      else{
          return t12+", "+time.getDate()+"-"+(time.getMonth()+1);
      }
      
      function tConv24(time24) {
    	  var ts = time24;
    	  var H = +ts.substr(0, 2);
    	  var h = (H % 12) || 12;
    	  h = (h < 10)?("0"+h):h;  // leading 0 at the left for 1 digit hours
    	  var ampm = H < 12 ? " AM" : " PM";
    	  ts = h + ts.substr(2, 3) + ampm;
    	  return ts;
    	};

  }
    