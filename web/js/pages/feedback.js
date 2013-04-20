/**
 * 
 */

$(document).ready(function(){
	
	if($("#infodetail").height() < 300)
		$("#infodetail").height(300);
	
	$("#feedback-form-submit").click(function() {
		if(FormUtil.check(document.getElementById("feedback"),true))
		{
			$("#feedback-form").submit();
		}
		return false;
	});
	
	$("#email").blur(function() {
		$("#email-check").removeClass();
		$("#email-check").html("");
//		var reg = /^(?:[a-z\d]+[_\-\+\.]?)*[a-z\d]+@(?:([a-z\d]+\-?)*[a-z\d]+\.)+([a-z]{2,})+$/i;
	    if(FormUtil.check(document.getElementById("email")))
	    {
	    	$("#email-check").addClass("correct");
	    }
	    else
	    {
	    	$("#email-check").addClass("error");
	    	$("#email-check").html("请填写正确邮箱地址");
	    }
	});
	
	$("#author").blur(function() {
		$("#author-check").removeClass();
		$("#author-check").html("");
		if(FormUtil.check(document.getElementById("author")))
	    {
			$("#author-check").addClass("correct");
	    }
	    else
	    {
	    	$("#author-check").addClass("error");
	    	$("#author-check").html("请填写您的称呼");
	    }
	});
	
});
