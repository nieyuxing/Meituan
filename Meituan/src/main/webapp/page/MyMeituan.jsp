<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>我的订单</title>
<link href="../css/shopping.css" type="text/css" rel="stylesheet" />
<link href="../css/details.css" type="text/css" rel="stylesheet" />
<link href="../css/MyMeituan.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/order.js"></script>
<script type="text/javascript" src="../js/typeShop.js"></script>
</head>

<body>
<div id="body-header">
	<div id="body-header-box01">
		<div class="h_top"> 
			<!-- 上-》左-->
			<ul class="h_top_left">
				<li> <a href="login.html">登录</a>&nbsp; <a href="../page/register.html">注册</a> </li>
			</ul>
			<!--上-》右 -->
			<ul class="h_top_right">
				<li><a href="">我的订单</a></li>
				<li><a href="#"><span>我的美团</span></a>
					<ul id="h_top_right_mymt">
						<li class="mymt"><a href="">我的订单</a></li>
						<li class="mymt"><a href="" >我的评价</a></li>
						<li class="mymt"><a href="">我的积分</a></li>
						<li class="mymt"><a href="">我的余额</a></li>
						<li class="mymt"><a href="">账户设置</a></li>
					</ul>
				</li>
				<li> <a href="#"><span>我的购物车</span></a>
					<ul id="h_top_right_myshopping">
						<li class="myshopping"><a href="">商品1</a></li>
						<li class="myshopping"><a href="">商品2</a></li>
					</ul>
				</li>
				<li> <a href="#"><span>我是商家</span></a>
					<ul id="h_top_right_shangjia">
						<li class="shangjia"><a href="">登录商家中心</a></li>
						<li class="shangjia"><a href="">商家营销平台</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>
	<div id="body-header-box02"> <a href=""><img src="../images/login02.png" id="img1"/></a>
		<div id="body-header-box02-on-on">
			<div class="h_body_search">
				<input class="text" type="text" value=" &nbsp;&nbsp;请输入商品名称或地址等" name="text">
				<a href="#" id="search"><span>搜索</span></a> </div>
			<ul class="h_body_hot">
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
				<li><a href="#">蛋糕</a></li>
			</ul>
		</div>
		<a href=""><img src="../images/login03.png" id="img2"/></a></div>
</div>


<div id="daohang">
	<div id="b_head">
		<div id="b_head_left"><a href="#">全部分类</a></div>
		<div id="b_head_right">
			<ul>
				<li><a href="#">首页</a></li>
				<li><a href="#">今日新单</a></li>
				<li><a href="#">购物</a></li>
				<li><a href="#">名店抢购</a></li>
			</ul>
		</div>
	</div>
	<div id="b_body_left">
		<ul>
			<li class="b_body_left_li" ><a class="b_body_left_li_a">美食</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">酒店/客栈</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">电影/在线选座</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">KTV</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">休闲娱乐</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">周边游/旅游</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">生活服务</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">购物</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">丽人</a></li>
			<li class="b_body_left_li"><a class="b_body_left_li_a">新品上架</a></li>
		</ul>
	</div>
	<div id="b_body_center"></div>
</div>


<div id="body-content">
	<div id="body-content-on-MyMeituan">
		<div id="b_body_leftshow">
			<ul>
				<li class="mymt"><a  href="javascript:void(0)" onClick="show1()">我的订单</a></li>
				<li class="mymt"><a  href="javascript:void(0)" onClick="show2()" >我的评价</a></li>
				<li class="mymt"><a  href="javascript:void(0)" onClick="show3()">我的余额</a></li>
				<li class="mymt"><a  href="javascript:void(0)" onClick="show4()">账户设置</a></li>
				<!-- <li class="mymt"><a  href="javascript:void(0)" onClick="show5()">安全中心</a></li>   -->
			</ul>
		</div>
		<!--订单 -->
		<div id="order"style="display:block" class="dingdan_right">111</div>
		<!--评价 -->
		<div id="pingjia" style="display:none" class="dingdan_right">222</div>
		<!--余额 -->
		<div id="yuE" style="display:none" class="dingdan_right">333</div>
		<!--设置 -->
		<div id="shezhi" style="display:none" class="dingdan_right">
			<div id="shezhi_body">
				<div>
					<label>手机号：</label>
					<p>尚未绑定手机号</p>
					<a href="#">立即绑定</a></div>
				<div>
					<label>邮&nbsp;箱：</label>
					<p>尚未绑定邮箱</p>
					<a href="#">立即绑定</a></div>
				<div>
					<label>用户名：</label>
					<p>xxx</p>
					<a href="#">修改</a></div>
				<div>
					<label>修改密码: </label>
					<p></p>
					<a href="#">立即修改</a></div>
			</div>
			<!--绑定手机-->
			<div id="tel" style="position:absolute;width:334px; height:278px;border:1px solid red; margin:-400px 0 0 300px;position:fixed !important;display:none ">
				<div class="tel_top" >
					<p>绑定手机号</p>
					<img alt="" src="../images/close.png"> </div>
				<div class="tel_content">
					<form action="">
						<div>
							<label>手机号</label>
							<input type="tel"/>
						</div>
						<div>
							<label></label>
							<a href="#" />获取验证码</a></div>
						<div>
							<label>动态码</label>
							<input type="text"/>
						</div>
						<div>
							<label></label>
							<a href="#"/>绑定</a></div>
					</form>
				</div>
			</div>
			<!---绑定邮箱--> 
			<!-- <div id="Email" style="position:absolute;width:334px; height:278px;border:1px solid red; margin:-400px 0 0 300px;position:fixed !important; ">
                  <div class="emial_top" >
                     <p>绑定手机号</p><img alt="" src="../images/close.png">
                  </div>
                  <div class="email_content">
                   <form action="">
                     <div><label>邮箱号</label><input type="email"></div> 
                     <div><label></label><a href="#" />获取验证码</a></div> 
                     <div><label>邮箱验证码</label><input type="text"/></div>
                     <div><label></label><a href="#"/>绑定</a></div> 
                   </form>  
                  </div>
           </div> --> 
		</div>
		<div id="box2"><img src="../images/hui.png"/></div>
	</div>
</div>
<div id="body-footer">
	<div id="footer-box01">
		<div id="body-footer-box">
			<div class="box11">
				<h3>获取更新</h3>
				<ul>
					<li><a href="">邮件订阅</a></li>
					<li><a href="">iPhone/Android</a></li>
					<li><a href="">美团QQ空间</a></li>
					<li><a href="">美团新浪微博</a></li>
					<li><a href="">sitemap</a></li>
					<li><a href="">RSS订阅</a></li>
				</ul>
			</div>
			<div class="box11">
				<h3>商务合作</h3>
				<ul>
					<li><a href="">商家合作</a></li>
					<li><a href="">美团商家营销平台</a></li>
					<li><a href="">市场合作</a></li>
					<li><a href="">美团联盟</a></li>
					<li><a href="">美团云</a></li>
					<li><a href="">廉政邮箱</a></li>
				</ul>
			</div>
			<div class="box11">
				<h3>公司信息</h3>
				<ul>
					<li><a href="">关于美团</a></li>
					<li><a href="">美团承诺</a></li>
					<li><a href="">媒体报道</a></li>
					<li><a href="">加入我们</a></li>
					<li><a href="">法律声明</a></li>
					<li><a href="">用户协议</a></li>
					<li><a href="">营业执照</a></li>
				</ul>
			</div>
			<div class="box11">
				<h3>用户帮助</h3>
				<ul>
					<li><a href="">申请退款</a></li>
					<li><a href="">查看美团卷密码</a></li>
					<li><a href="">常见问题</a></li>
					<li><a href="">开放API</a></li>
					<li><a href="">反诈骗公告</a></li>
				</ul>
			</div>
			<div id="box12">
				<div id="xxx"> <img src="../images/kefu.png">
					<p class="ke">客服电话</p>
					<p class="dian"><span style="color:#000;font-size:18px;">10107888</span>(9:00~23:00)</p>
					<p class="tui">退款、退换货、查看美团劵</p>
					<a href="">参考教程，轻松搞定！</a> </div>
			</div>
		</div>
	</div>
	<div id="footer-box02"></div>
</div>
<script type="text/javascript">
         function show1(){
           if($('#order').css('display','none')){
        	   $('#order').show();
        	   $('#pingjia').hide();
               $('#yuE').hide();
               $('#shezhi').hide();
               $('#anquanCenter').hide();
           }  	
         }
         
         function show2(){
             if($('#pingjia').css('display','none')){
            	 $('#order').hide();
          	     $('#pingjia').show();
                 $('#yuE').hide();
                 $('#shezhi').hide();
                 $('#anquanCenter').hide();
             }  	
           }
         
         function show3(){
             if($('#yuE').css('display','none')){
            	 $('#order').hide();
          	     $('#pingjia').hide();
                 $('#yuE').show();
                 $('#shezhi').hide();
                 $('#anquanCenter').hide();
             }  	
           }
         
         function show4(){
             if($('#shezhi').css('display','none')){
            	 $('#order').hide();
          	     $('#pingjia').hide();
                 $('#yuE').hide();
                 $('#shezhi').show();
                 $('#anquanCenter').hide();
             }  	
           }
         
	         $(function(){
	        	 $("#shezhi_body div a").on('click',function(){
	            	 $("body").append("<div id='mask'></div>");
	            	 $("#mask").addClass("mask").fadeIn("slow");
	            	 $("#tel").fadeIn("slow");
	        	 });
	         }); 
        	 
      
   </script>
</body>
</html>