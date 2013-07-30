$(".questionHolder .selectedAnswer").click(function(){
    //alert("setting attr checked");
    if($(this).attr("title")=="click to select"){
        
        $(this).parents(".answers").find(".selectedAnswer").attr({
        title: "click to select"
    });
    $(this).attr({
           title: "current selection"
           
       });
       
    }
});


$(function(){
	
        
        
        $(".saveQuit").click(function(){
	//alert("Saving responses...please wait");
        
        $(".questionHolder .selectedAnswer").each(function(i){
        //alert("Hey Q:"+i);
        
        
        if($(this).attr("title")=="current selection"){
            var question = Math.ceil(((parseInt(i)+1)/4));
            
            var value= (parseInt(i)+1);
            for(; value > 4 ;){
                value=value-4;
            }
            var answer = value;
            alert("Question is :"+question);
            alert("Answer is :"+answer);
            
            
            
    }
        
});
        
        });
        
});