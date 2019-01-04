 function forwardData(user){        
        var session = new Object();
        session.uid =user.id;
        session.uname =user.name;
        session.uemail =user.email
        session.ucity = user.location.name;
        session.upic = '';
             
           $.ajax({
            url: '/tripbuddy/checkuser',
            type: 'post',
            contentType: "application/json; charset=utf-8",
            traditional: true,
            error: function(resp){
            console.log('error part' + JSON.stringify(resp));
            },
            success: function (resp) {
            
            console.log('resp');
            console.log(resp.code);
            if(resp==='auth')
               window.location.href = 'http://localhost:8080/tripbuddy/home';
            if(resp==='blocked')
                window.location.href = 'http://localhost:8080/tripbuddy/blocked';
              
              },
            data: JSON.stringify(session)
        });  
        
        }    
        function fblogin() {
            FB.login(function(fbdata) {
                      
			var url = '/me?fields=id,name,email,location';
			FB.api(url,'GET',{},function(userdata) {
			console.log(userdata);
     			 forwardData(userdata);
            });

            }, {scope: 'email,user_location'});            
        }

        function fblogout() {
            FB.logout(function(response) {
              console.log(response);
            });
        }
       
       
        function checkLoginStatus(){
        FB.getLoginStatus(function(response){
        console.log(response);
        if(response.status==='connected')
        {	console.log('user is logged in,redirecting');
        	redirectUser(response);
        }	
        else
       	 	console.log('welcome guest');
       
         });
           } 
           
        