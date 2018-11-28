<!DOCTYPE html>

<html>
    <head>
        <title>Chat WebSocket</title>
       <script src="resources/vendor/sockjs/sockjs.min.js" /></script>
        <script src="resources/vendor/stomp/stomp.min.js" /></script>
        <script type="text/javascript">
            var stompClient = null;
             
            function setConnected(connected) {
                document.getElementById('connect').disabled = connected;
                document.getElementById('disconnect').disabled = !connected;
                document.getElementById('conversationDiv').style.visibility 
                  = connected ? 'visible' : 'hidden';
                document.getElementById('response').innerHTML = '';
            }
             
            function connect() {
                var socket = new SockJS('/tripbuddy/chat');
                var from = document.getElementById('from').value;
                var text = 'adduser';
                console.log(socket);
                stompClient = Stomp.over(socket);
                stompClient.connect({}, function(frame) {
                    setConnected(true);
                    console.log('Connected: ' + frame);
                    stompClient.send("/app/chat.addUser", {}, 
                  JSON.stringify({'from':from, 'text':text,'user':'kushu'}));
                    stompClient.subscribe('/topic/room/', function(messageOutput) {
                        showMessageOutput(JSON.parse(messageOutput.body));
                    });
                });                
                
            }
             
            function disconnect() {
                if(stompClient != null) {
                    stompClient.disconnect();
                }
                setConnected(false);
                console.log("Disconnected");
            }
             
            function sendMessage() {
                var from = document.getElementById('from').value;
                var text = document.getElementById('text').value;
                stompClient.send("/app/chat.msg", {}, 
                  JSON.stringify({'from':from, 'text':text,'user':'kushu'}));
            }
             
            function showMessageOutput(messageOutput) {
                var response = document.getElementById('response');
                console.log(response);
                var p = document.createElement('p');
                p.style.wordWrap = 'break-word';
                p.appendChild(document.createTextNode(messageOutput.from + ": " 
                  + messageOutput.text + " (" + messageOutput.time + ")"));
                response.appendChild(p);
            }
        </script>
    </head>
    <body onload="disconnect()">
        <div>
            <div>
                <input type="text" id="from" placeholder="Choose a nickname"/>
            </div>
            <br />
            <div>
                <button id="connect" onclick="connect();">Connect</button>
                <button id="disconnect" disabled="disabled" onclick="disconnect();">
                    Disconnect
                </button>
            </div>
            <br />
            <div id="conversationDiv">
                <input type="text" id="text" placeholder="Write a message..."/>
                <button id="sendMessage" onclick="sendMessage();">Send</button>
                <p id="response"></p>
            </div>
        </div>
 
    </body>
</html>