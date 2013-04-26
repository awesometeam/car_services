var isLeaveMessage = false;
$(document).ready(function(){
	
	if($("#infodetail").height() < 300)
		$("#infodetail").height(300);
	
	$("#feedback-form-submit").click(function() {
		if(isLeaveMessage)
		{
			alert("您已经成功留言，我们将尽快核实并处理您的留言！");
			return false;
		}
		if(FormUtil.check(document.getElementById("feedback"),true))
		{
			$("#feedback-form").submit();
			isLeaveMessage = true;
			alert("感谢您对我们的关注，我们将尽快处理您的留言！");
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
