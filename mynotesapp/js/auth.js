var objpeople = [
    {
    username : "rahma" ,
    password : "saad"
    } 
]
 
function getInfo() {
 var username = document.getElementById('username').value
 var password = document.getElementById('password').value

 for(var i = 0; i<objpeople.length;i++ ){
    if(username== objpeople[i].username && password == objpeople[i].password)
    { alert('correct credentials '+ username)
window.location.href = 'notes.html' ;
return

}

 }

 alert('incorrect credintials')

}