<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<base href="/Meituan/" />
<meta charset="UTF-8">
<title>美团网</title>
<link href="css/index.css" type="text/css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script src="js/slider.js"></script>
<style>
.flexslider {
	margin: 0px auto 20px;
	position: relative;
	width: 912px;
	height: 311px;
	overflow: hidden;
	zoom: 1;
}

.flexslider .slides li {
	width: 100%;
	height: 100%;
}

.flex-direction-nav a {
	width: 70px;
	height: 70px;
	line-height: 99em;
	overflow: hidden;
	margin: -35px 0 0;
	display: block;
	background: url(images/ad_ctr.png) no-repeat;
	position: absolute;
	top: 50%;
	z-index: 10;
	cursor: pointer;
	opacity: 0;
	filter: alpha(opacity = 0);
	-webkit-transition: all .3s ease;
	border-radius: 35px;
}

.flex-direction-nav .flex-next {
	background-position: 0 -70px;
	right: 0;
}

.flex-direction-nav .flex-prev {
	left: 0;
}

.flexslider:hover .flex-next {
	opacity: 0.8;
	filter: alpha(opacity = 25);
}

.flexslider:hover .flex-prev {
	opacity: 0.8;
	filter: alpha(opacity = 25);
}

.flexslider:hover .flex-next:hover, .flexslider:hover .flex-prev:hover {
	opacity: 1;
	filter: alpha(opacity = 50);
}

.flex-control-nav {
	width: 100%;
	position: absolute;
	bottom: 10px;
	text-align: center;
}

.flex-control-nav li {
	margin: 0 2px;
	display: inline-block;
	zoom: 1;
	*display: inline;
}

.flex-control-paging li .body_right_div {
	background: url(images/dot.png) no-repeat 0 -16px;
	display: block;
	height: 16px;
	overflow: hidden;
	text-indent: -99em;
	width: 16px;
	cursor: pointer;
}

.flex-control-paging li div.flex-active, .flex-control-paging li.active div
	{
	background-position: 0 0;
}

.body_right_div {
	width: 290px;
	height: 315px;
	float: left;
	margin-right: 12px
}

.slides_a {
	width: 290px;
	height: 265px;
	dispaly: block;
	float: left
}

.slides_gname {
	margin-bottom: 9px;
	display: block;
	font-size: 18px
}

.slides_price {
	width: 90px;
	height: 50px;
	line-height: 50px;
	float: left;
	text-align: center;
}

.flexslider .slides div img {
	width: 290px;
	height: 311px;
	display: block;
	float: left;
	margin-top: 0px
}
</style>

</head>
<body>
	<div id="all">
		<!-- 头部-->
		<div id="header">
			<div id="body-header-box01">
				<div class="h_top">
					<!-- 上-》左-->
					<ul class="h_top_left">
						<li><a href="page/login.jsp"><span style="color: #F69">登录</span></a>&nbsp;
							<a href="page/register.jsp">注册</a></li>
					</ul>
					<!--上-》右 -->
					<ul class="h_top_right">
						<li><a href="page/MyMeituan.jsp"><span>我的订单</span></a>
							<div>
								<ul id="h_top_right_mymt">
									<li class="mymt"><a href="page/order.jsp">我的美团</a></li>
								</ul>
							</div></li>
						<li><a href="">最近浏览</a></li>
						<li><a href="page/shopping.jsp"><span>我的购物车</span></a>
						<li><a href="back/shopLogin.jsp"><span>我是商家</span></a>
					</ul>
				</div>
			</div>
			<!--中-->
			<div class="h_body">
				<a id="img" href="index.jsp"><img src='images/meituan.com.png' /></a>
				<div class="h_body_search">
					<input class="text" onkeypress="if (event.keyCode == 13) _search()" type="text" placeholder=" &nbsp;&nbsp;请输入商品名称或地址等" name="text">
					<a href="javascript:" id="search"><span>搜索</span></a>
				</div>

				<ul class="h_body_hot">
					<li><a class="b_body_left_li_a">美食</a></li>
					<li><a class="b_body_left_li_a">酒店/客栈</a></li>
					<li><a class="b_body_left_li_a">KTV</a></li>
					<li><a class="b_body_left_li_a">休闲娱乐</a></li>
					<li><a class="b_body_left_li_a">生活服务</a></li>
					<li><a class="b_body_left_li_a">新品上架</a></li>
				</ul>
			</div>
			<!-- 下-->
			<div class="h_foot"></div>
		</div>
	</div>
	<div id="body">
		<div id="b_head">
			<div id="b_head_left">
				<a href="#">全部分类</a>
			</div>
			<div id="b_head_right">
				<ul>
					<li><a href="page/typeShop.jsp">首页</a></li>
					<li><a href="page/typeShop.jsp">今日新单</a></li>
					<li><a href="page/typeShop.jsp">购物</a></li>
					<li><a href="page/typeShop.jsp">名店抢购</a></li>
				</ul>
			</div>
		</div>
		<div id="b_body">
			<div id="b_body_left">
				<ul>
					<li class="b_body_left_li"><a class="b_body_left_li_a">美食</a></li>
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
			<div id="b_body_center">
				<ul id="types">

				</ul>
			</div>

			<div id="b_body_right">
				<div id="b_body_right_top">
					<ul>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">美食</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">酒店/客栈</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">电影/在线选座</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">KTV</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">休闲娱乐</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">周边游/旅游</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">生活服务</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">购物</a></li>
						<li class="b_body_right_li"><a class="b_body_left_li_a"
							href="javascript:">丽人</a></li>
					</ul>
				</div>
				<div id="b_body_right_foot">
					<!--图片轮转 -->
					<div id="banner_tabs" class="flexslider">
						<ul class="slides">
							<li><c:forEach var="item" items="${goods }" begin="0"
									end="2" step="1">
									<div class="body_right_div">
										<a href="page/details.jsp" class="slides_a"> <img
											width="290" height="260"
											style="background:url(images/${item.gpic}) no-repeat center;">
										</a>
										<div style="width: 200px; height: 20px; float: left">
											<a href="" class="slides_gname">${item.gname }</a>
											<p>${item.gdetails }</p>
										</div>
										<div class="slides_price">￥${item.gprice }</div>
									</div>
								</c:forEach></li>
							<li><c:forEach var="item" items="${goods }" begin="3"
									end="5" step="1">
									<div class="body_right_div">
										<a href="page/details.jsp" class="slides_a"> <img
											width="290" height="260"
											style="background: url(images/${item.gpic}) no-repeat center;">
										</a>
										<div style="width: 200px; height: 20px; float: left">
											<a href="" class="slides_gname">${item.gname }</a>
											<p>${item.gdetails }</p>
										</div>
										<div class="slides_price">￥${item.gprice }</div>
									</div>
								</c:forEach></li>
							<li><c:forEach var="item" items="${goods }" begin="6"
									end="8" step="1">
									<div class="body_right_div">
										<a href="page/details.jsp" class="slides_a"> <img
											width="290" height="260"
											style="background: url(images/${item.gpic}) no-repeat center;">
										</a>
										<div style="width: 200px; height: 20px; float: left">
											<a href="" class="slides_gname">${item.gname }</a>
											<p>${item.gdetails }</p>
										</div>
										<div class="slides_price">￥${item.gprice }</div>
									</div>
								</c:forEach></li>
						</ul>
						<ul class="flex-direction-nav">
							<li><a class="flex-prev" href="javascript:;">Previous</a></li>
							<li><a class="flex-next" href="javascript:;">Next</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="content">
		<div id="content-left">
			<div id="nowLook">
				<ul>
					<li id="a1"><img src='images/left01.png' /></li>
					<li id="a2"><img src='images/left02.png' /></li>
					<li id="a3"><img src='images/left03.png' /></li>
					<li id="a4"><img src='images/left04.png' /></li>
					<li id="a5"><img src='images/left05.png' /></li>
					<li id="a6"><img src='images/left06.png' /></li>
					<li id="a7"><img src='images/left07.png' /></li>
					<li id="a8"><img src='images/left08.png' /></li>
				</ul>
			</div>
		</div>

		<div id="content-middle">
			<div class="box3">
				<div class="box8" id="meishi">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/meishi.jpg" /></a> <a
							href="page/typeShop.jsp" id="a">美食</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="meishiType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多美食团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="xiuxian">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/xiuxian.jpg" /></a>
						<a href="page/typeShop.jsp" id="a">休闲娱乐</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="xiuxianType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多休闲娱乐团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="dianying">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/dianying.jpg" /></a>
						<a href="page/typeShop.jsp" id="a">电影</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="dianyingType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多电影团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="jiudian">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/jiudian.jpg" /></a>
						<a href="page/typeShop.jsp" id="a">酒店</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="jiudianType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多酒店团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="shenghuo">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/shenghuo.jpg" /></a>
						<a href="page/typeShop.jsp" id="a">生活服务</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="shenghuoType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多生活服务团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="gouwu">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/gouwu.jpg" /></a> <a
							href="page/typeShop.jsp" id="a">购物</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="gouwuType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多购物团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="liren">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/liren.jpg" /></a> <a
							href="page/typeShop.jsp" id="a">丽人</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="lirenType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多丽人团购，请点击查看></a>
				</div>
			</div>
			<div class="box3">
				<div class="box8" id="lvyou">
					<div class="box4">
						<a href="page/typeShop.jsp"><img src="images/lvyou.jpg" /></a> <a
							href="page/typeShop.jsp" id="a">旅游</a>
					</div>
					<div class="box5">
						<ul>
							<li><a href="page/typeShop.jsp">美食</a></li>
							<li><a href="page/typeShop.jsp">代金券</a></li>
							<li><a href="page/typeShop.jsp">自助餐</a></li>
							<li><a href="page/typeShop.jsp">火锅</a></li>
							<li><a href="page/typeShop.jsp">烤烤烤肉</a></li>
							<li><a href="page/typeShop.jsp">香锅烤鱼</a></li>
							<li><a href="page/typeShop.jsp">西餐</a></li>
							<li><a href="page/typeShop.jsp">全部></a></li>
						</ul>
					</div>
				</div>
				<div class="box6" id="lvyouType"></div>
				<div class="box9">
					<a href="page/typeShop.jsp">更多旅游团购，请点击查看></a>
				</div>
			</div>

			<div id="box10">
				<div class="box11">
					<p>获取更新</p>
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
					<p>商务合作</p>
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
					<p>公司信息</p>
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
					<p>用户帮助</p>
					<ul>
						<li><a href="">申请退款</a></li>
						<li><a href="">查看美团卷密码</a></li>
						<li><a href="">常见问题</a></li>
						<li><a href="">开放API</a></li>
						<li><a href="">反诈骗公告</a></li>
					</ul>
				</div>
				<div id="box12">
					<img src="images/kefu.png">
					<p class="ke">客服电话</p>
					<p class="dian">
						<span style="color: #000; font-size: 18px;">10107888</span>(9:00~23:00)
					</p>
					<p class="tui">退款、退换货、查看美团劵</p>
					<a href="">参考教程，轻松搞定！</a>
				</div>
			</div>
		</div>
		<div id="content-right">
			<div id="box2">
				<img src="images/hui.png" />
			</div>
		</div>
	</div>

	<div id="footer"></div>


	<script type="text/javascript">
		//实现图片轮转
		$(function() {
			var bannerSlider = new Slider($('#banner_tabs'), {
				time : 5000,
				delay : 100,
				event : 'hover',
				auto : true,
				mode : 'fade',
				controller : $('#bannerCtrl'),
				activeControllerCls : 'active'
			});
			$('#banner_tabs .flex-prev').click(function() {
				bannerSlider.prev()
			});
			$('#banner_tabs .flex-next').click(function() {
				bannerSlider.next()
			});
		})
		//查询框查询
		$(function(){
			$(document).keydown(function(event){ 
			if(event.keyCode==13){ 
			$("#search").click(); 
			     } 
			}); 
			
			 $("#search").click(function(){
				var text=$(".text").val();
		       	alert(text);
		       	$.post("goods/selectGoods?gname="+encodeURI(encodeURI(text)),function(data){
		       		alert(data);
		       		window.location.href="/Meituan/"+data+".jsp";
		       		text.remove();
		       	  });
		         });
		   });
	</script>

</body>
</html>
