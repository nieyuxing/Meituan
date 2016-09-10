<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>美团网</title>
<link href="../css/shopping.css" type="text/css" rel="stylesheet" />
<link href="../css/details.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/typeShop.js"></script>
</head>

<body>
	<div id="body-header">
		<div id="body-header-box01">
			<div class="h_top">
				<!-- 上-》左-->
				<ul class="h_top_left">
					<li><a href="login.jsp">登录</a>&nbsp; <a
						href="register.jsp">注册</a></li>
				</ul>
				<!--上-》右 -->
				<ul class="h_top_right">
					<li><a href="MyMeituan.jsp">我的订单</a></li>
					<li><a href="MyMeituan.jsp"><span>我的美团</span></a>
						<ul id="h_top_right_mymt">
							<li class="mymt"><a href="">我的订单</a></li>
							<li class="mymt"><a href="">我的评价</a></li>
							<li class="mymt"><a href="">我的积分</a></li>
							<li class="mymt"><a href="">我的余额</a></li>
							<li class="mymt"><a href="">账户设置</a></li>
						</ul></li>
					<li><a href="shopping.jsp"><span>我的购物车</span></a>
						<ul id="h_top_right_myshopping">
							<li class="myshopping"><a href="">商品1</a></li>
							<li class="myshopping"><a href="">商品2</a></li>
						</ul></li>
					<li><a href="#"><span>我是商家</span></a>
						<ul id="h_top_right_shangjia">
							<li class="shangjia"><a href="">登录商家中心</a></li>
							<li class="shangjia"><a href="">商家营销平台</a></li>
						</ul></li>
				</ul>
			</div>
		</div>
		<div id="body-header-box02">
			<a href=""><img src="../images/login02.png" id="img1" /></a>
			<div id="body-header-box02-on-on">
				<div class="h_body_search">
					<input class="text" type="text" value=" &nbsp;&nbsp;请输入商品名称或地址等"
						name="text"> <a href="#" id="search"><span>搜索</span></a>
				</div>
				<ul class="h_body_hot">
					<li><a href="typeShop.jsp">美食</a></li>
					<li><a href="typeShop.jsp">酒店/客栈</a></li>
					<li><a href="typeShop.jsp">KTV</a></li>
					<li><a href="typeShop.jsp">休闲娱乐</a></li>
					<li><a href="typeShop.jsp">生活服务</a></li>
					<li><a href="typeShop.jsp">新品上架</a></li>
				</ul>
			</div>
			<a href=""><img src="../images/login03.png" id="img2" /></a>
		</div>
	</div>
	<div id="daohang">
		<div id="b_head">
			<div id="b_head_left">
				<a href="#">全部分类</a>
			</div>
			<div id="b_head_right">
				<ul>
					<li><a href="../index.jsp">首页</a></li>
                	<li><a href="typeShop.jsp">今日新单</a></li>
                	<li><a href="typeShop.jsp">购物</a></li>
                	<li><a href="typeShop.jsp">名店抢购</a></li>
				</ul>
			</div>
		</div>
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
		<div id="b_body_center"></div>
	</div>
	<div id="body-content">
		<div id="body-content-on">
			<div id="body-content-on-header"></div>
			<div id="body-content-on-content">
				<div id="details-up">
					<h1>【雁峰区】新至尊比萨</h1>
					<div class="jieshao">仅售32元！价值56元的比萨15选1，建议1-2人使用，提供免费WiFi。</div>
					<div class="details-up-left">
						<div id="details-up-left-up">
							<img src="../images/ceshi02.jpg" alt="测试" />
						</div>
						<div id="details-up-left-down">
							<div id="smallDiv">
								<img src="../images/ceshi02.jpg" alt="测试小图标" width="78px"
									height="45px" />
							</div>
						</div>
					</div>
					<div class="details-up-right">
						<div class="box01">
							价格<span
								style="color: #F00; font-size: 24px; margin: 0 20px 0 24px;">￥32</span>门店价
							<del>￥56</del>
						</div>
						<div class="box02">
							<div class="box03">
								已售 <span style="color: #F00; font-size: 14px;">111111</span>
							</div>
							<div class="box03">
								<span style="color: #F00; font-size: 14px;">10</span> 分
							</div>
							<div class="box03">
								<span style="color: #F00; font-size: 14px;">1111</span> 人评价
							</div>
						</div>
						<div class="box01">
							有效期<span style="margin-left: 20px;">截止到2016.09.27<span
								style="color: #F00; font-size: 14px;">周末、法定节假日通用</span></span>
						</div>
						<div class="box01">
							<span style="float: left;">数量</span>
							<div class="cart-quantity">
								<button class="minus" mt-bind-onclick="decrease()" type="button"
									gaevent="top/minus" data-action="-">-</button>
								<input class="text" type="text" value="1"
									mt-bind-value="quantity" mt-bind-onkeyup="" maxlength="4"
									autocomplete="off">
								<button class="plus" mt-bind-onclick="increase()" type="button"
									gaevent="top/plus" data-action="+" for="J-cart-add">+</button>
							</div>
						</div>
						<div class="box04">
							<form  id="" action="shopping.jsp" method="post">
								<input class="qianggou" type="submit" value="√ 立即抢购">
							</form>
							<a href="" id="che"><img src="../images/gouwuche.jpg"></a>
						</div>
					</div>
				</div>
				<div id="details-down">
					<div id="details-down-left">
						<div id="left-box01">
							<p id="tou">消费评价</p>
							<div id="left-box01-on"></div>
						</div>
						<div id="left-box02">
							<ul class="uuu">
								<li class="left-box02-up-li">全部</li>
								<li class="left-box02-up-li">全部</li>
								<li class="left-box02-up-li">全部</li>
								<li class="left-box02-up-li-select"><select id=""
									class="sorttype" name="sorttype">
										<option id="" value="default">默认排序</option>
										<option id="" value="time">时间排序</option>
								</select></li>
							</ul>
							<div id="left-box02-down">
								<ul id="pingjia">
									<!--评价每页显示10条-->
									<!--9个li为了效果-->
								     
								</ul>
							</div>
						</div>
						<div class="myMeituanPageNum">
							<ul>
								<li class="current" data-page="1"><a>1</a></li>
								<li data-page="2"><a href="#">2</a></li>
								<li data-page="3"><a href="#">3</a></li>
								<li class="next" data-page="2"><a href="#">下一页</a></li>
							</ul>
						</div>
					</div>
					<div class="details-down-right" id="nowLook">
						<h3>
							最近浏览<a href="" id="clear">清空</a>
						</h3>
						<ul>
							<li class="details-down-right-li"><a href="#"><img
									src="../images/ceshi01.jpg" alt="测试">
									<h5>茶油鸭2-3人</h5> </a> <span style="color: #F00;">￥39</span></li>
							<li class="details-down-right-li"><a href="#"><img
									src="../images/ceshi01.jpg" alt="测试">
									<h5>茶油鸭2-3人</h5> </a> <span style="color: #F00;">￥39</span></li>
						</ul>
					</div>
				</div>
			</div>
			<div id="box2">
				<img src="../images/hui.png" />
			</div>
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
					<div id="xxx">
						<img src="../images/kefu.png">
						<p class="ke">客服电话</p>
						<p class="dian">
							<span style="color: #000; font-size: 18px;">10107888</span>(9:00~23:00)
						</p>
						<p class="tui">退款、退换货、查看美团劵</p>
						<a href="">参考教程，轻松搞定！</a>
					</div>
				</div>
			</div>
		</div>
		<div id="footer-box02"></div>
	</div>
</body>
</html>
