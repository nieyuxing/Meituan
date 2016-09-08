<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Meituan/"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>vvv</title>
<link href="css/register.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>

</head>
 
</head>
<body>
   <form  id="form">
			<ul>
				<div>
					<label>邮箱号</label>
					<li><input path="email" type="text" name="email" class="email" />
					<p>注册成功后，全美团可用</p></li>
				</div>
				<div>
					<label>创建密码</label>
					<li><input id="uspwd" path="uspwd" type="password" name="uspwd" value="至少输入6位" oninput="OnInput (event)" /></li>
				</div>
				<div id="anquan">
					<label></label>
					<li><span id="s1">弱</span> <span id="s2">中</span><span id="s3">强</span></li>
				</div>
				<div>
					<label>确认密码</label>
					<li><input id="uspwd2" path="uspwd2" type="password" name="uspwd2" /></li>
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
		
		<script type="text/javascript">
		$("#register").click(function register(){
				var emailText=$(".email").val();
				var uspwd=$("#uspwd").val();
				var uspwd2=$("#uspwd2").val();
				if(/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/.test(emailText)){
					alert("邮件格式正确!!!"); 
				 }else{
					alert("邮件格式不正确!!!"); 
				 }
				if(/^[a-z0-9_-]{6,18}$/.test(uspwd)){
				}else{
					alert("密码不符合要求!!!");
				}
				if(uspwd==uspwd2){
				}else{
					alert("前后密码不相同!!!");
				}
			   });
		</script>

</body>

