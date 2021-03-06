<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Minimal and Clean Sign up / Login and Forgot Form by FreeHTML5.co</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FreeHTML5.co" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	

  

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
	<%--<link rel="shortcut icon" href="favicon.ico">--%>

	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/bootstrap.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/animate.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/assets/css/style.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/layer/theme/default/layer.css">

	<!-- Modernizr JS -->
	<script src="${pageContext.request.contextPath}/static/js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="${pageContext.request.contextPath}/static/js/respond.min.js"></script>
	<![endif]-->

	</head>
	<body class="style-3">

		<div class="container">
			<div class="row" style="padding-top: 60px; clear: both;">

			</div>
			<div class="row">
				<div class="col-md-4 col-md-push-8">
					<!-- Start Sign In Form -->
					<form action="#" class="fh5co-form animate-box" data-animate-effect="fadeInRight">
						<h2>Sign Up</h2>
						<div class="form-group">
							<div class="alert alert-success" role="alert">Your info has been saved.</div>
						</div>
						<div class="form-group">
							<label for="name" class="sr-only">Name</label>
							<input type="text" class="form-control" id="name" placeholder="Name" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="email" class="sr-only">Email</label>
							<input type="email" class="form-control" id="email" placeholder="Account" autocomplete="off" onkeyup="this.value=this.value.replace(/[^\w]/g,'')" onpaste="this.value=this.value.replace(/[^\w]/g,'')">
						</div>
						<div class="form-group">
							<label for="password" class="sr-only">Password</label>
							<input type="password" class="form-control" id="password" placeholder="Password" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="re-password" class="sr-only">Re-type Password</label>
							<input type="password" class="form-control" id="re-password" placeholder="Re-type Password" autocomplete="off">
						</div>
						<div class="form-group">
							<input type="radio" name="sex" value="0" checked>男 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
							<input type="radio" name="sex" value="1" >女 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
							<input type="radio" name="sex" value="2" >第三性别
						</div>
						<%--<div class="form-group">--%>
							<%--<label for="remember"><input type="checkbox" id="remember"> Remember Me</label>--%>
						<%--</div>--%>
						<div class="form-group">
							<p>Already registered? <a href="${pageContext.request.contextPath}/index.jsp">Sign In</a></p>
						</div>
						<div class="form-group">
							<input type="button" value="Sign Up" class="btn btn-primary" onclick="signUp()">
						</div>
					</form>
					<!-- END Sign In Form -->


				</div>
			</div>
			<div class="row" style="padding-top: 60px; clear: both;">
				<%--<div class="col-md-12 text-center"><p><small>&copy; All Rights Reserved. More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></small></p></div>--%>
			</div>
		</div>

		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/static/js/jquery-3.2.1.min.js"></script>
		<!-- Bootstrap -->
		<script src="${pageContext.request.contextPath}/static/assets/js/bootstrap.min.js"></script>
		<!-- Placeholder -->
		<script src="${pageContext.request.contextPath}/static/assets/js/jquery.placeholder.min.js"></script>
		<!-- Waypoints -->
		<script src="${pageContext.request.contextPath}/static/assets/js/jquery.waypoints.min.js"></script>
		<!-- Main JS -->
		<script src="${pageContext.request.contextPath}/static/assets/js/main.js"></script>
		<script src="${pageContext.request.contextPath}/static/layer/layer.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/app.js"></script>

		<script>
			function callback(data) {
                if (data.code == 200) {
                    msg("注册成功，去登陆。");
                    window.location.href = "${pageContext.request.contextPath}/index.jsp";
                } else if (data.code == 403) {
                    msg("注册失败");
                }
            }
			function signUp() {
			    var nickname = $("#name").val();
				if(!validInput(nickname,"name")) return;
				var email = $("#email").val();
                if(!validInput(email,"email")) return;
				var password = $("#password").val();
                if(!validInput(password,"password")) return;
                var _password = $("#re-password").val();
                if(password != _password){
                    layer.tips("两次输入的密码不同","#re-password");
                    return;
				}
			    var data = {
			        nickname:nickname,
					email:email,
					password:password,
					sex:$("input[name='sex']").val()
				};
				ajaxRequest("${pageContext.request.contextPath}/user/save","POST",data,callback)
            }
		</script>
	</body>
</html>

