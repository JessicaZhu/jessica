$(function() {

    $("#q-nav li a").mouseover(function()
	{
        
        // Figure out current list via CSS class
        var curList = $("#q-nav li a.current").attr("rel");
        
        // List moving to
        var $newList = $(this);
        
        // Set outer wrapper height to height of current inner list
        var curListHeight = $("#q").height();
        $("#q").height(curListHeight);
        
        // Remove highlighting - Add to just-clicked tab
        $("#q-nav li a").removeClass("current");
        $newList.addClass("current");
        
        // Figure out ID of new list
        var listID = $newList.attr("rel");
        
        if (listID != curList) {
            
            // Fade out current list
            $("#"+curList).fadeOut(300, function() {
                
                // Fade in new list on callback
                $("#"+listID).fadeIn();
                
                // Adjust outer wrapper to fit new list snuggly
                var newHeight = $("#"+listID).height();
                $("#q").animate({
                    height: newHeight
                });
            
            });
            
        }        
        
        // Don't behave like a regular link
        return false;
    });

});
$(function() {

  $("#q-nav li a").click(function()  
	{
        
        // Figure out current list via CSS class
        var curList = $("#q-nav li a.current").attr("rel");
        
        // List moving to
        var $newList = $(this);
        
        // Set outer wrapper height to height of current inner list
        var curListHeight = $("#q").height();
        $("#q").height(curListHeight);
        
        // Remove highlighting - Add to just-clicked tab
        $("#q li a").removeClass("current");
        $newList.addClass("current");
        
        // Figure out ID of new list
        var listID = $newList.attr("rel");
        
        if (listID != curList) {
            
            // Fade out current list
            $("#"+curList).fadeOut(300, function() {
                
                // Fade in new list on callback
                $("#"+listID).fadeIn();
                
                // Adjust outer wrapper to fit new list snuggly
                var newHeight = $("#"+listID).height();
                $("#q").animate({
                    height: newHeight
                });
            
            });
            
        }        
        
        // Don't behave like a regular link
        return false;
    });

});