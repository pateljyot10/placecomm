<!DOCTYPE html>
<html><head> <title>jQuery goes to DOM-ville</title>
<style>
div{
    float:left;
    height:245px;
    text-align:left;
    border: solid #000 2px
}
#header{
    width:100%;
    border:0px;
    height:50px
}
#main{
    background-color:grey;
    height:inherit
}
.my_hover{
    border: dotted #00f 3px;
}
#result{
    height:inherit;
    width:980px
}
.discount{
    border: solid lightgreen 5px
}
.no_discount{
    border: solid red 3px
}
</style>
<script src="resources/js/jquery.js"></script>
</head>
<body>

<h2>Our Menu</h2>
<ul>
<li><button id="vegOn">Go Vegetarian</button> </li>
<li><button id="restoreMe">Restore Menu</button> </li>
<li><button id="replaceMe">Make it Veg</button> </li>
</ul>

<br/>
<div class="TopMenu">
<div class="menu">
    <ul>
        <li class="fish">Arabic Fish</li>
    </ul>
    <ul>
        <li>Chicken Murga</li>
    </ul>
    <ul>
        <li>Bhainsh</li>
    </ul>
</div>
<div class="menu">
    <ul>
        <li class="meat">Bakra</li>
    </ul>
    <ul>
        <li>Gay</li>
    </ul>
    <ul>
        <li>Kutta</li>
    </ul>
</div>
<div class="menu">
    <ul>
        <li>Sandwitch</li>
    </ul>
    <ul>
        <li>Burger Veg</li>
    </ul>
    <ul>
        <li>Potato CHips</li>
    </ul>
</div>
</div>
<script>
$(document).ready(function() {
alert("Hello World");
$(document).ready(function(){
    
    $("button#vegOn").click(function(){
        
        $fishArray=$(".fish").parent().parent().detach();
        $(".meat").before("<li class='veg'><em>Chana Masala</em></li>");
        $meatArray=$(".meat").detach();

    });
    $("button#restoreMe").click(function(){
        alert("Restore Mode..");
        
    });
    $("button#replaceMe").click(function(){
        alert("Replace Mode..");
        $(".fish").replaceWith("<li class='veg'><em>Carrot Subhzi</em></li>");
    });
});

}); //End document.ready()
</script>
</body>
</html>