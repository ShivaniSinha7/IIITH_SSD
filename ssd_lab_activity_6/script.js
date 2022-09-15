function allowDrop(a)
{
    a.preventDefault();
}
function drag(a)
{
    a.dataTransfer.setData("text", a.target.id);
}

function drop(a) {
    a.preventDefault();
    var data = a.dataTransfer.getData("text");
    a.target.appendChild(document.getElementById(data));
}

function myKeyPress(c) {
    var key;
    if(window.Event){
        key = c.keyCode;
    }
    else if(c.which)
    {
        keynum = c.which;
    }
}

function alertfunction() {
    var c1 = document.getElementById("name").value;
    var c2 = document.getElementById("email").value;
    var c3 = document.getElementById("suser").value;
    var c4 = document.getElementById("teamlead").value;

    alert("Manager Name " + c1 + "\n" + "Group Email " + c2 + "\n" + "Server Username " + c3 + "\n" + "Team Lead" + c4);
    
}



