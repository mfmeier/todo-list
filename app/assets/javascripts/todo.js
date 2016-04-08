window.addEventListener("load", function(){
    var myTaskSpot = document.getElementById('mytasks');
    var addTask = document.getElementById('add');



    var myTaskDrop = new XMLHttpRequest();
    myTaskDrop.open("get", "http://localhost:3000/mymail");
    myTaskDrop.addEventListener("load", function(event){
    myTaskSpot.innerHTML = myTaskDrop.responseText;
    });
    myTaskDrop.send();

    var addTaskDrop = new XMLHttpRequest(); 

});