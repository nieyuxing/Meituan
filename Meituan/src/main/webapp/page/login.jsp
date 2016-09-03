<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Meituan/"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录|美团网</title>
<link href="css/login.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/jquery.cookie.js"></script>

</head>
<body>
	<div id="box1">
    	<a href="index.jsp"><img src="images/login02.png"></a>
    </div>
    
    <div id="box2">
    	<div id="left">
        	<img width="480px" height="370px" src="images/login01.png">
        </div>
        <div id="right">
        	<form class="login" method="post" action="user/login">
            	<div id="none"></div>
                <span>
                	账号登录
                    <a href="">手机动态码登录<img src="images/login04.png"></a>
                </span>
                
                <div class="two">
					<div class="two01"><img src="images/email.png"></div>
					<div class="two02"><input  class="f-text" type="text"  placeholder="手机号/用户名/邮箱" id="usname" name="usname" required="required"></div>
				</div>       
				<div class="two">
					<div class="two01"><img src="images/password.png"></div>
					<div class="two02"><input  class="f-text" type="password" placeholder="密码" id="uspwd" name="uspwd" required="required"></div>
				</div>
                
                <div id="three">
                	<a href="findPassword.jsp">忘记密码？</a>
                    <input id="check" type="checkbox" onclick="save()"/>7天内自动登录
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
            <a href="#"><img src="images/login03.png"></a>
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
    
    
    <script type="text/javascript">
    //实现七天自动登录
    $(document).ready(function () {
        if ($.cookie("rmbUser") == "true") {
        $("#check").attr("checked", true);
        $("#usname").val($.cookie("username"));
        $("#uspwd").val($.cookie("password"));
        }
      });

   function save(){
	   if($('#check').get(0).checked) {
		     //alert("已选择7天自动登录");
		   var str_username = $("#usname").val();
		       var str_password = $("#uspwd").val();
		       $.cookie("rmbUser", "true", { expires: 7}); //存储一个带7天期限的cookie
		       $.cookie("username", str_username, { expires:7 });
		       $.cookie("password", str_password, { expires:7 });
		    }
		    else {
		      //alert("未选择7自动天登录!!!!"); 
 		      $.cookie("rmbUser", "false", { expire: -1 });
 		      $.cookie("username", "", { expires: -1 });
 		      $.cookie("password", "", { expires: -1 });
	      }
      }
    </script>
    
</body>
</html>
