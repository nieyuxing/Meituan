	<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>商家登录</title>
<link rel="stylesheet" type="text/css" href="../css/shopLogin.css" />
</head>

<body>	
	<div id="body-head">
    	<div id="body-head-on">
        	<a href="" id="a1"><img src="../images/login-head01.png"></a>
        	<a href="../index.jsp" id="a2">美团首页</a>
        </div>
    </div>
    <div id="body-content">
    	<div id="body-content-on">
        	<div id="up">
            	<h2>商家登录</h2>
            </div>
            <div id="down">
            	<div id="down-left">
                	<form  id="shopLogin" action="" method="post">
                    	<div class="one">
                        		<label>账号</label>
                                <input id="" class="f-text" type="text" maxlength="100" name="login" size="30" tabindex="1">
                                <a href="">无账号，我想合作</a>            
                        </div>
                        <div class="one">
                        		<label>密码</label>
                                <input id="" class="f-text" type="password"  name="password" size="30" tabindex="2">
                                <a href="">忘记账号或密码？</a>            
                        </div>
                        <div id="two">
                        		<label>验证码</label>
								<input id="" class="yan" type="text" value="" name="captcha" maxlength="4">
								<img width="60" height="30" src="../images/yanzhengma.png">
								<a href="">看不清？换一张</a>
                        </div>
                        <div id="three">
                        	<input id="autologin" class="ui-checkbox" type="checkbox" name="auto_login" checked="checked" value="1" tabindex="3">
                            <label>下次自动登录</label>
                        </div>
                        <div id="four">
                        	<input id="submit" class="form-button" type="submit" value="登录" tabindex="4">
                        </div>                      
                    </form>
                </div>
                <div id="down-right">
                	<a href=""><img width="276" height="245" title="美团商家版客户端下载" alt="美团商家版客户端下载" src="../images/erweima.png"></a>
                </div>
            </div>
        </div>
    </div>
    <div id="body-footer">
    	<div id="body-footer-on">
        	<div id="on-one">
            	<img src="../images/loginFooter01.png" id="png01">
                <div class="on-one-box01">
                	<h3>商家咨询请致电</h3>
                    <span>1010-5557</span><br/>
                    周一到周日09:00-21:00
                </div>
                <div class="on-one-box01" id="box02">
                	<h3>商家电话验证请致电</h3>
                    <span>400-618-5335</span><br/>
                </div>
                <div class="on-one-box01" id="box03">
                	<h3>消费者咨询请致电</h3>
                    <span>1010-7888</span><br/>
                    周一到周日09:00-22:00
                </div>
                <img src="../images/loginFooter02.png">
                <div class="on-one-box02">
                	<h3><a href="">廉正邮箱<br><span>lianzheng@meituan.com</span></a></h3>
                </div>
            </div>
            <div class="on-two">
            	<a href="">关于美团</a>
                |
				<a href="">合作流程</a>
                |
                <a href="">媒体报道</a>
                |
                <a href="">手机网页版</a>
                |
                <a href="">常见问题</a>
            </div>
            <div class="on-two">
            	&copy;2016 meituan.com 京ICP证070791号 
            </div>
        </div>
    </div>
</body>
</html>
