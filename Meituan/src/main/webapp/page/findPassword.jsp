<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="utf-8">
<title>找回密码</title>
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="this is my page">
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<link href="../css/findPassword.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<style type="text/css">
</style>
</head>

<body>
	<div id="findmima">
		<div id="findmima_logo">
			<div id="findmima_logo_content">
				<a href="../index.jsp"><img src="../images/meituan2.png" /></a>
				<div id="findmima_logo_right">
					<p>
						已有美团账号?<a href="login.jsp">登录</a>
					</p>
				</div>
			</div>
		</div>
		<!--找回登录密码-->
		<div id="findmima_body" style="display: block">
			<div id="body_top">
				<div id="body_top_left">
					<div class="black"></div>
					<div class="text">找回登录密码</div>
				</div>
				<div id="body_top_right"></div>
			</div>

			<div id="body_centre">
				<div class="body_centre_img">
					<img src="../images/findMiMa1.png" />
				</div>
			</div>
			<div id="body_bottom">
				<div id="body_bottom_form">
					<div id="body_bottom_form_center">
						<div class="formcontent">
							<form action="user/findPassword" method="post">
								<div class="formcontent">
									<label for="uname">美团账号</label> <input id="usnameOremail"
										type="text" name="usnameOremail" placeholder="用户名/已注册邮箱" />
									<p class="textP"></p>
								</div>
								<div class="formcontent">
									<label for="yzm">&nbsp;验证码</label> <input type="text"
										class="picYZM" /> <img src="../IdentityServlet" id="identity"
										onload="btn.disabled = false;" /> <a class="huan"
										href="javascript:void(0)" onclick="reloadImage()" id="btn">看不清楚?换一张</a>
								</div>

								<div class="formcontent">
									<label></label>
									<p>
										<a class="next" href="javascript:void(0)" onClick="show()">下一步</a>
									</p>
								</div>
								<div class="error">${errorMsg }</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- 变化结束-->
			<!--邮箱找回密码-->
			<div id="mailFindPwd" style="display: none">
				<div id="top">
					<img src="../images/mailFindpwd_top.png" />
				</div>
				<div id="content">
					<div id="content_left">
						<img src="../images/mail.png" />
					</div>
					<div id="content_right">
						<div>
							<a href="javascript:void(0)" onClick="show1()">立即找回</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 变化结束-->
			<!--邮箱认证-->
			<div id="mailRenzheng" style="display: none">
				<div id="mailRenzheng_top">
					<img src="../images/mailRenzheng_top.png" />
				</div>
				<div id="mailRenzheng_bottom">
					<div class="mailRenzheng_content">
						<div class="one">
							<label><img src="../images/mail2.png" /></label>
							<h3>邮件已发送...</h3>
						</div>
						<div class="two">
							<a href="#" class="goMail" onClick="show2()">去邮箱收信</a>
						</div>
					</div>
				</div>
			</div>
			<!-- 修改密码-->
			<div id="modifyPwd" style="display: none">
				<div id="modifyPwd_top">
					<img src="../images/modifyPwd.png" />
				</div>
				<div id="modifyPwd_bottom">
					<div id="modifyPwd_bottom_content">
						<div>
							<img src="../images/yanzhengSuccess.png" />
						</div>
						<div class="pwd">
							<label>新的登录密码</label><input type="password" />
						</div>
						<div class="anquanxishu">
							<label></label><span>弱</span><span>中</span><span>强</span>
						</div>
						<div class="pwd">
							<label>确认登录密码</label><input type="password" />
						</div>
						<div class="pwd">
							<label></label><a class="tijiao" href="javascript:void(0)"
								onClick="show3()">确认提交</a>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!--密码修改成功，进入登陆界面-->
		<div id="finishRenzheng" style="display: none">
			<div id="finishRenzheng_top">
				<img src="../images/finishfindPwd.png" />
			</div>
			<div id="finishRenzheng_bottom">
				<div class="finishRenzheng_content">
					<div class="frist">
						<label><img src="../images/yes.png" /></label>
						<h3>您的登录密码已重新设置请妥善保管</h3>
					</div>
					<div class="second">
						<a class="login" href="login.jsp">立即登录</a>
					</div>
				</div>
			</div>
		</div>
		<!-- 变化结束-->

		<div id="findmima_footer">
			<p>
				&copy;meituan.com <a href="">京ICP证070791号</a>&nbsp;京公网安备11010502025545号
			</p>
		</div>

		<script type="text/javascript" src="../js/findPassword.js"></script>
		<script type="text/javascript">
		function reloadImage(){
			document.getElementById('btn').disabled = true;
			document.getElementById('identity').src='../IdentityServlet?ts=' + new Date().getTime();
		}
		
		 var num=0;
		 $("#usnameOremail").blur(function(){
			 alert("aaa");
		   var text=$("#usnameOremail").val();	
		   alert(text);
		   
		   $.post("user/usnameOremailverify?usnameOremail="+text,function(data){
				alert(data);
				if(data){
					
				}else{
					$(".textP").css("color","red");
					$(".textP").html("*邮箱未注册");
					num++;
				}
			},"json");
		   });
</script>
</body>
</html>

