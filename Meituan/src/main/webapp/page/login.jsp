<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录|美团网</title>
<link href="../css/login.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<div id="box1">
    	<a href="../index.jsp"><img src="../images/login02.png"></a>
    </div>
    
    <div id="box2">
    	<div id="left">
        	<img width="480px" height="370px" src="../images/login01.png">
        </div>
        <div id="right">
        	<form class="login" method="post" action="user/login">
            	<div id="none"></div>
                <span>
                	账号登录
                    <a href="">手机动态码登录<img src="../images/login04.png"></a>
                </span>
                
                <div class="two">
					<div class="two01"><img src="../images/email.png"></div>
					<div class="two02"><input id="usname" class="f-text" type="text" value="" placeholder="手机号/用户名/邮箱" name="usname" required="required"></div>
				</div>       
				<div class="two">
					<div class="two01"><img src="../images/password.png"></div>
					<div class="two02"><input id="uspwd" class="f-text" type="password" placeholder="密码" name="uspwd" required="required"></div>
				</div>
                
                <div id="three">
                	<a href="findPassword.html">忘记密码？</a>
                    <input id="check" type="checkbox"  />7天内自动登录
                </div>
                <div id="four">
                	<input class="btn" type="submit" value="登录" name="commit">
                </div>
                <p>
                	还没有账号？
					<a href="">免费注册</a>
                </p>
            </form>
             <div class="error">${errorMsg }</div>
        </div>
    </div>

    <div id="footer">
    	<div id="footer01">
        	<ul>
                <li><a href="#">关于美团</a></li>
                <li><a href="#">美团承诺</a></li>
                <li><a href="#">加入我们</a></li>
                <li><a href="#">商家入驻</a></li>
                <li><a href="#">帮助中心</a></li>
                <li class="last"><a href="#">美团手机版</a></li>
            </ul>
            <a href="#"><img src="../images/login03.png"></a>
        </div>
        <div id="footer02">
        	<p>
            	 &copy;
				<span>2016</span>
				<a href="#">美团网团购</a>
				meituan.com
				<a href="#">京ICP证070791号</a>
				京公网安备11010502025545号
				<a href="#"> 电子公告服务规则</a>
            </p>
        </div>
    </div>
</body>
</html>
