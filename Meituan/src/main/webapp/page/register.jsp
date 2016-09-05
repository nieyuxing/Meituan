<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html >
<html>
<head>
<base href="/Meituan/"/>
<meta charset="utf-8">
<title>注册页面</title>
<link href="css/register.css" type="text/css" rel="stylesheet" />
<style type="text/css">
</style>
</head>

<body>
	<div id="reg_logo">
		<div id="top">
			<a href="index.jsp"><img src="images/meituan2.png"
				class="img" /></a>
			<div id="reg_logo_right">
				已有美团账号? <a href="page/login.jsp">登录</a>
			</div>
		</div>
	</div>
	<div id="reg_body">
	   <div id="formcontent">
		<form action="user/register" method="post" id="form">
			<ul>
				<div>
					<label>邮箱号</label>
					<li><input path="email" type="text" name="email" />
					<p>注册成功后，全美团可用</p></li>
					<f:errors path="email" cssClass="error"/>
				</div>
				<div>
					<label>创建密码</label>
					<li><input path="uspwd" type="password" name="uspwd" /></li>
					<f:errors path="uspwd" cssClass="error"/>
				</div>
				<div id="anquan">
					<label></label>
					<li><span>弱</span> <span>中</span><span>强</span></li>
				</div>
				<div>
					<label>确认密码</label>
					<li><input path="uspwd2" type="password" name="uspwd2" /></li>
					<f:errors path="uspwd2" cssClass="error"/>
				</div>
			</ul>
			<div>
				<label></label><input id="register" type="submit"  name="submit" value="同意以下协议并注册"/><br>
				<br>
			</div>
			<div>
				<label></label><a href="about.jsp"><span style="color:#4FC3B7">
						<<美团网用户协议>> <span></a>
			</div>
		</form>
		<div class="error">${errorMsg }</div>
		</div>
	</div>
	<div id="reg_footer">
		<div class="footer_content">
			<p>
				<a href="#">&copy;meituan.com</a> <a href="#">京ICP证070791号</a><span>京公网安备11010502025545号</span>
			</p>
		</div>
	</div>
</body>
</html>
