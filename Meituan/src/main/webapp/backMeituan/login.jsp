<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<base href="/Meituan/"/>
<link href="backMeituan/assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="backMeituan/assets/css/font-awesome.min.css" />

<link rel="stylesheet" href="backMeituan/assets/css/ace.min.css" />
<link rel="stylesheet" href="backMeituan/assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="backMeituan/assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="backMeituan/css/style.css" />

<script src="backMeituan/assets/js/ace-extra.min.js"></script>

<script src="backMeituan/js/jquery-1.9.1.min.js"></script>
<script src="backMeituan/assets/layer/layer.js" type="text/javascript"></script>
<title>登陆</title>
</head>

<body class="login-layout">
	<div class="logintop">
		<span>欢迎后台管理界面平台</span>
		<ul>
			<li><a href="#">返回首页</a></li>
			<li><a href="#">帮助</a></li>
			<li><a href="#">关于</a></li>
		</ul>
	</div>
	<div class="loginbody">
		<div class="login-container">
			<div class="center">
				<h1>
					<i class="icon-leaf green"></i> <span class="orange">元辰软件</span> <span
						class="white">后台管理系统</span>
				</h1>
				<h4 class="white">Background Management System</h4>
			</div>

			<div class="space-6"></div>

			<div class="position-relative">
				<div id="login-box" class="login-box widget-box no-border visible">
					<div class="widget-body">
						<div class="widget-main">
							<h4 class="header blue lighter bigger">
								<i class="icon-coffee green"></i> 管理员登陆
							</h4>

							<div class="login_icon">
								 <img src="backMeituan/images/login.png" /> 
							</div>

							<form action="admin/login" method="post" >
								<fieldset>
									<label class="block clearfix"> <span
										class="block input-icon input-icon-right"> <input
											type="text" class="form-control" placeholder="登录名" name="aname" />
											<i class="icon-user"></i>
									</span>
									</label> <label class="block clearfix"> <span
										class="block input-icon input-icon-right"> <input
											type="password" class="form-control" placeholder="密码"
											name="pwd" /> <i class="icon-lock"></i>
									</span>
									</label>

									<div class="space"></div>

									<div class="clearfix">
										<label class="inline"> <input type="checkbox"
											class="ace" /> <span class="lbl">保存密码</span>
										</label>
										<input type="submit" class="width-35 pull-right btn btn-sm btn-primary" value="登录"/>
									</div>

									<div class="space-4"></div>
								</fieldset>
							</form>

							<div class="social-or-login center">
								<span class="bigger-110">通知</span>
							</div>

							<div class="social-login center">本网站系统不再对IE8以下浏览器支持，请见谅。</div>
						</div>
						<!-- /widget-main -->

						<div class="toolbar clearfix"></div>
					</div>
					<!-- /widget-body -->
				</div>
				<!-- /login-box -->
			</div>
			<!-- /position-relative -->
		</div>
	</div>
	<div class="loginbm">
		版权所有 2016 <a href="">元辰软件系统有限公司</a>
	</div>
	<strong></strong>
</body>

</html>

</script>