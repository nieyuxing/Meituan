<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>美团网</title>
<link href="../css/index.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/order.js"></script>  
<style type="text/css">
#b_body_center{
		position:absolute;
		width:250px;
		height:400px;
		display:none;
		z-index:1;
		background-color:#eee;
		margin-left:310px;
		font-family:"微软雅黑";
}
#b_body_left{
	position:absolute;
	display:none;
	z-index:1;
}
#b_body_leftshow{
	z-index:0;
	height:400px;
	background-color:#FAFAFA;
	width:180px;
	text-align:center;
	float:left;
}
.mymt{
		font-weight:700;
		color:#FAFAFA;
		height:38px;
		line-height:38px;
		width:100%;
		height:39px;
		background-color:#FAFAFA;
		margin-top:20px;
	}
#body_content{width:928px; height:600px;margin-left:65px; float:left;border:1px solid red}	
#order,#pingjia,#yuE;#shezhi,#anquanCenter{width:100%;height:100%}
#shezhi_body{width:600px;height:500px; margin-top:50px;margin-left:50px}
#shezhi_body div{width:100%;32px;line-height:32px;margin-top:5px;float:left}
#shezhi_body div label{width:78px;height:32px;float:left;display:block; text-align:right;}
#shezhi_body div p{width:150px;height:32px;float:left;display:block;text-align:left;font-size:13px;margin-left:10px}
#shezhi_body div a{width:83px;height:32px;float:left;display:block;text-align:left;}

.tel_top{width:100%;height:39px;background-color:#F7F7F7}
.tel_content{width:100%;height:218px;}
.tel_content div{width:280px;height:37px;}
.tel_content div label{display:block;width:50px;height:37px;line-height:37px;text-align:right;float:left}
.tel_content div input{display:block;width:210px;height:37px;line-height:37px;text-align:left;float:left}
</style> 
</head>
  
<body>
 <div id="all">
      <!-- 头部-->
       <div id="header">
           <div class="h_top">
              <!-- 上-》左-->
              <ul class="h_top_left">
                 <li>
                 <a href="login.jsp"><span style="color:#F69">登录</span></a>&nbsp;
                 <a href="register.jsp">注册</a>
                 </li>
              </ul>
              <!--上-》右 -->
              <ul class="h_top_right">
                 <li><a href="">我的订单</a></li>
                 
                 <li>
                   <a href="#"><span>我的美团</span></a>
                   <ul id="h_top_right_mymt">
                      <li class="mymt"><a href="">我的订单</a></li>
                     <li class="mymt"><a href="" >我的评价</a></li>
                     <li class="mymt"><a href="">我的余额</a></li>
                     <li class="mymt"><a href="">账户设置</a></li> 
                     <li class="mymt"><a href="">安全中心</a></li>     
                   </ul>
                 </li>
                 
                  <li>
                   <a href="shopping.jsp"><span>我的购物车</span></a>
                   <ul id="h_top_right_myshopping">
                     <li class="myshopping"><a href="">商品1</a></li>
                     <li class="myshopping"><a href="">商品2</a></li>
                   </ul>
                 </li>
                 
                 <li>
                   <a href="#"><span>我是商家</span></a>
                   <ul id="h_top_right_shangjia">
                     <li class="shangjia"><a href="">登录商家中心</a></li>
                     <li class="shangjia"><a href="">商家营销平台</a></li>
                   </ul>
                 </li>
                 
              </ul>
           </div>
           <!--中-->
           <div class="h_body">
              <a id="img" href="meituan.jsp"><img src='../images/meituan.com.png' /></a>
              <div class="h_body_search">
                 <input class="text" type="text" placeholder="&nbsp;&nbsp;请输入商品名称或地址等" name="text">
                 <a href="#" id="search"><span>搜索</span></a>
              </div>
              
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
           <!-- 下-->
           <div class="h_foot"></div>
       </div>
    </div>
    <div id="body">
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
	    <div id="b_body_leftshow">
        	<ul>
                     <li class="mymt"><a  href="javascript:void(0)" onClick="show1()">我的订单</a></li>
                     <li class="mymt"><a  href="javascript:void(0)" onClick="show2()" >我的评价</a></li>
                     <li class="mymt"><a  href="javascript:void(0)" onClick="show3()">我的余额</a></li>
                     <li class="mymt"><a  href="javascript:void(0)" onClick="show4()">账户设置</a></li> 
                     <!-- <li class="mymt"><a  href="javascript:void(0)" onClick="show5()">安全中心</a></li>   -->
            </ul>
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
	</div>
	 
	<div id="b_body_center">
       	
    </div>
    
    <div id="body_content">
       <!--订单 -->
       <div id="order"style="display:block">111</div> 
       <!--评价 -->
       <div id="pingjia" style="display:none">222</div>
       <!--余额 -->
       <div id="yuE" style="display:none">333</div>
       <!--设置 -->
       <div id="shezhi" style="display:none">
          <div id="shezhi_body"> 
            <div><label>手机号：</label><p>尚未绑定手机号</p><a href="#">立即绑定</a></div>
            <div><label>邮&nbsp;箱：</label><p>尚未绑定邮箱</p><a href="#">立即绑定</a></div>
            <div><label>用户名：</label><p>xxx</p><a href="#">修改</a></div>
            <div><label>修改密码: </label><p></p><a href="#">立即修改</a></div>
          </div>   
           <!--绑定手机-->
           <div id="tel" style="position:absolute;width:334px; height:278px;border:1px solid red; margin:-400px 0 0 300px;position:fixed !important;display:none ">
                  <div class="tel_top" >
                     <p>绑定手机号</p><img alt="" src="../images/close.png">
                  </div>
                  <div class="tel_content">
                    <form action="">
                     <div><label>手机号</label><input type="tel"/></div> 
                     <div><label></label><a href="#" />获取验证码</a></div> 
                     <div><label>动态码</label><input type="text"/></div>
                     <div><label></label><a href="#"/>绑定</a></div> 
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