<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page import="com.tornado.model.MessageModel"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>车主表扬</title>
	<meta name="keywords" content="南峰汽修,南峰,南峰汽修长" />
	<meta name="description" content="南峰汽修" />
	<link rel="stylesheet" type="text/css" media="screen" href="../../css/reset.css">
	<link rel="stylesheet" type="text/css" media="screen" href="../../css/style.css">
	<link rel="stylesheet" type="text/css" media="screen" href="../../css/slider.css">
	<link rel="stylesheet" type="text/css" media="screen" href="../../css/pages/praise.css">    
	<script src="../../js/jquery-1.7.min.js"></script>
	<script src="../../js/jquery.easing.1.3.js"></script>
	<script src="../../js/tms-0.4.1.js"></script>
	<script type="text/javascript" src="../../js/pages/feedback.js"></script>
	<script type="text/javascript" src="../../js/framework/CoreUtil.js"></script>
	<script type="text/javascript" src="../../js/framework/jPages.js"></script>

	<script src="../../js/hoverIntent.js"></script>
	<script src="../../js/superfish.js"></script>
	<link rel="stylesheet" href="../../css/nav.css" media="screen">
	<link rel="stylesheet" href="../../css/bbs.css" media="screen">
	<link rel="stylesheet" type="text/css" media="screen" href="../../css/pages/feedback.css">  

	<script>
	$(document).ready(function(){
		
		$("#header").load(
			"../../header.html",
			function() {
				$("#menu-praise").addClass("current");
				$('#site-nav').superfish({
					animation: 	{height:"show"},
			        delay:		100,
			        speed:		10,
			        autoArrows:	true
			    });
			}
		); 
		
		$("#sider").load("../../sider_bar.html");
		
// 		$('.slider')._TMS({
// 			show:0,
// 			pauseOnHover:true,
// 			prevBu:false,
// 			nextBu:false,
// 			playBu:false,
// 			duration:800,
// 			preset:'fade',
// 			pagination:true,
// 			pagNums:false,
// 			slideshow:7000,
// 			numStatus:false,
// 			banners:'fade',
// 			waitBannerAnimation:false,
// 			progressBar:false
// 		});
		
		$("#pager").jPages({
	        containerID  : "itemContainer",
			first: '首页',
			last: '尾页',
			previous: '上页',
			next: '下页',
	        perPage: 10,
	        startPage: 1,
//	        startRange: 2,
//	        midRange: 1,
//	        endRange: 2,
//			animation: 'wobble',
//			keyBrowse: true,
			callback    : function( pages, items ){
//				alert(pages);
//				alert(items);
			}
	    });
		
		if($("#itemContainer").height() < 300)
			$("#itemContainer").height(300);
		
		$("#author").val(null);
		$("#field-content").val(null);
		
	});
	</script>
    <!--[if lt IE 9]>
   		<script type="text/javascript" src="js/html5.js"></script>
    	<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
	<%
		request.setAttribute("messages",new MessageModel().listOrderBy(new String [] {"date"},new Boolean [] {false}));
	%>
</head>
<body>
	<div id="header"></div>
	<!--==============================content================================-->
	<div id="main-content">
		<div id="sider"></div>
		<div id="content" class="main praise" style="width:700px;padding:0px;margin-top:10px;border-top: 1px dotted gray;">
			<div id="itemContainer">
				<c:forEach items="${messages}" var="msg">
					<div class="item">
			      		<div class="content"><c:out value="${msg.author}" />：<c:out value="${msg.content}" /></div>
			      		<div class="date"><fmt:formatDate value="${msg.date}" pattern="yyyy-MM-dd" type="date" dateStyle="long"/></div>
			      		<div class="cleaner"></div>
		      		</div>
				</c:forEach>
	      	</div>
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">晋江客户：服务很不错，检查很仔细，及时发现发动机比较脏，主动要求额外加了罐发动机清洗液。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：还不错，师傅比较热心。预约后很快就安排保修。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：服务不错，师傅很耐心，下次再去：）</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">厦门客户：态度很不错，很认真讲解车辆的保养问题。会再去。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：维修师傅很专业</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">晋江客户：服务很不错，检查很仔细，及时发现发动机比较脏，主动要求额外加了罐发动机清洗液。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：还不错，师傅比较热心。预约后很快就安排保修。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：服务不错，师傅很耐心，下次再去：）</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">厦门客户：态度很不错，很认真讲解车辆的保养问题。会再去。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：维修师傅很专业</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">晋江客户：服务很不错，检查很仔细，及时发现发动机比较脏，主动要求额外加了罐发动机清洗液。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
<!-- 	      	<div class="item"> -->
<!-- 	      		<div class="content">泉州客户：还不错，师傅比较热心。预约后很快就安排保修。</div> -->
<!-- 	      		<div class="date">2013-06-06</div> -->
<!-- 	      		<div class="cleaner"></div> -->
<!-- 	      	</div> -->
			<div id="pager"></div>
<!-- 	      	<div class="pg" style="margin:30px 0px;"> -->
<!-- 				<a href="#" class="previous">上一页</a> -->
<!-- 				<strong>1</strong> -->
<!-- 				<a href="#">2</a> -->
<!-- 				<a href="#">3</a> -->
<!-- 				<a href="#">4</a> -->
<!-- 				<a href="#">5</a> -->
<!-- 				<a href="#">6</a> -->
<!-- 				<a href="#">7</a> -->
<!-- 				<a href="#">8</a> -->
<!-- 				<a href="#" class="last">... 164</a> -->
<!-- 				<a href="#" class="next">下一页</a> -->
<!-- 			</div> -->
			<div class="cleaner"></div>
	      	<div id="feedback">
		      	<form id="feedback-form" target="praise-iframe" style="margin-top:0px;" method="post" 
		      		action="MessageController.do?action=leavePraiseMessage">
				<div class="item">
					<p class="label" style="width: 50px;">姓名:</p>
					<input type="text" alertmsg="请填写您的称呼" required="true" name="author" id="author">
					<span id="author-check" class="init">必填</span>
				</div>
<!-- 				<div class="item"> -->
<!-- 					<p class="label">电子邮箱:</p> -->
<!-- 					<input type="text" alertmsg="请填写正确email地址" ver-type="email" required="true" name="email" id="email" style="width:300px;"> -->
<!-- 					<span id="email-check" class="init">必填</span> -->
<!-- 				</div> -->
				<div class="item">
<!-- 	       			<p>内容:</p> -->
	       			<textarea rows="8" style="width: 664px; height: 125px;" alertmsg="请填写您的建议" required="true" id="field-content" name="content" ></textarea>
				</div>
				<div class="item">
					<input type="submit" id="feedback-form-submit" accesskey="s" value="提交">
				</div>
				<iframe id="praise-iframe" style="display:none;" name="praise-iframe"></iframe>
				</form>
			</div>
		</div>
	</div>
	<!--==============================footer=================================-->
	<div class="clear"></div>
<!-- 	<footer> -->
<!-- 		<div class="soc-icons"> -->
<!-- 			<span>Follow Us:</span><a href="#"><img src="images/icon-1.jpg" alt=""></a><a href="#"><img src="images/icon-2.jpg" alt=""></a><a href="#"><img src="images/icon-3.jpg" alt=""></a> -->
<!-- 		</div> -->
<!-- 	</footer>	 -->
</body>
</html>