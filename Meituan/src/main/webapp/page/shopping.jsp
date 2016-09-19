<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>购物车</title>
<link href="../css/shopping.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="../js/shopping.js"></script>
</head>

<body>
	<div id="body-header">
		<div id="body-header-box01">
			<div class="h_top">
				<!-- 上-》左-->
				<ul class="h_top_left">
					<li><a href="login.jsp">登录</a>&nbsp; <a
						href="page/register.html">注册</a></li>
				</ul>
				<!--上-》右 -->
				<ul class="h_top_right">
					<li><a href="">我的订单</a></li>
					<li><a href="#"><span>我的美团</span></a>
						<ul id="h_top_right_mymt">
							<li class="mymt"><a href="">我的订单</a></li>
							<li class="mymt"><a href="">我的评价</a></li>
							<li class="mymt"><a href="">我的积分</a></li>
							<li class="mymt"><a href="">我的余额</a></li>
							<li class="mymt"><a href="">账户设置</a></li>
						</ul></li>
					<li><a href="#"><span>我的购物车</span></a>
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
			<div id="body-header-box02-on">
				<ul>
					<li class="step current" style="width: 33.333333333333%">1.
						提交订单</li>
					<li class="step" style="width: 33.333333333333%">2. 选择支付方式</li>
					<li class="step" style="width: 33.333333333333%">3. 购买成功</li>
				</ul>
				<div class="progress">
					<div class="progress-bar"></div>
				</div>
			</div>
			<a href=""><img src="../images/login03.png" id="img2" /></a>
		</div>
	</div>
	<div id="body-content">
		<div id="body-content-on">
			<div id="on-one">
				<img src="../images/shopping01.jpg" alt="shopping" /> <span>我的购物车</span>
				1/20
			</div>
			<div id="on-two">
				<table id="shopping-table" cellspacing="0">
					<tbody>
						<tr class="list-up">
							<th width="60"><input id="cart-selectall"
								class="ui-checkbox" type="checkbox" mb-onchange=""
								mb-checked="isAllChecked"> <label
								class="cart-select-all" for="cart-selectall">全选</label></th>
							<th class="desc" width="auto">项目</th>
							<th width="70">单价</th>
							<th width="150">数量</th>
							<th class="total" width="70">小计</th>
							<th width="80">操作</th>
						</tr>
						
							
							<tr class="list-content01">
								<td id="shopping001" class="cartItem" colspan="6">
									<table id="shopping001_one" cellspacing="0">
										<tbody>
											<tr>
												<td class="select-cartItem" width="60" rowspan="1" id="check">
													<input type="checkbox" name="cartItem" id="" class=""
													value="">
												</td>
												<td class="desc" width="420"><a href="../goods/details?gid=${goods.gid }"><img
														src="../images/${goods.good.gpic}" width="63" height="39"><span>${goods.good.gname } : ${goods.good.gdetails }</span></a>
												</td>
												<td class="price" width="70">￥<span class="J-price">${goods.good.gprice }</span>
												</td>
												<td class="saleNum" width="150">
													<div class="cart-quantity">
														<button class="minus" onclick="numDec()" type="button">-</button>
														<input class="text" type="text" value="1" id="noneText">
														<button class="plus" onclick="numAdd()" type="button">+</button>
													</div>
												</td>
												<td class="moneyTotal" width="70">￥<span id="shopPrice">${goods.good.gprice }</span>
												</td>
												<input type="hidden" value="${goods.good.gprice }" id="price" /><!--单价-->
												<td class="list-delete" width="80"><a class="delete"
													mb-onclick="" gaevent="cart/delete" data-params="" href="">删除</a>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						
						
						
						<tr class="jiezhang">
							<td></td>
							<td></td>
							<td class="jiezhan-money" colspan="4">已选<span
								style="color: #F00">1</span>件商品&nbsp;&nbsp;<span
								style="font-weight: bold">应付金额：</span>
								<span style="color: #F00; font-size: 24px">￥11 </span>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="on-three">
				<h3>
					收货地址<span><a>管理</a></span>
				</h3>
				<div id="dizhi">
					<div class="dizhi-box">
						<span style="color: #F00;">*</span>所在地区： <select
							id="address-province" class="address-province" autocomplete="off"
							name="adrProvince">
							<option value="-1">--省份--</option>
							<option value="110000">北京</option>
							<option value="120000">天津</option>
							<option value="130000">河北</option>
							<option value="140000">山西</option>
							<option value="150000">内蒙古</option>
							<option value="210000">辽宁</option>
							<option value="220000">吉林</option>
							<option value="230000">黑龙江</option>
							<option value="310000">上海</option>
							<option value="320000">江苏</option>
							<option value="330000">浙江</option>
							<option value="340000">安徽</option>
							<option value="350000">福建</option>
							<option value="360000">江西</option>
							<option value="370000">山东</option>
							<option value="410000">河南</option>
							<option value="420000">湖北</option>
							<option value="430000">湖南</option>
							<option value="440000">广东</option>
							<option value="450000">广西</option>
							<option value="460000">海南</option>
							<option value="500000">重庆</option>
							<option value="510000">四川</option>
							<option value="520000">贵州</option>
							<option value="530000">云南</option>
							<option value="540000">西藏</option>
							<option value="610000">陕西</option>
							<option value="620000">甘肃</option>
							<option value="630000">青海</option>
							<option value="640000">宁夏</option>
							<option value="650000">新疆</option>
							<option value="710000">台湾</option>
							<option value="810000">香港</option>
							<option value="820000">澳门</option>
						</select> <select id="address-city" class="address-city" autocomplete="off"
							name="adrCity">
							<option value="-1">--城市--</option>
						</select> <select id="address-district" class="address-district"
							autocomplete="off" name="adrDistrict">
							<option value="-1">--市区--</option>
						</select>
					</div>

					<div class="dizhi-box">
						<span style="color: #F00;">*</span>街道地址：<input id="address-detail"
							class="address-detail" type="text" value="" name="adrAddress"
							size="60" maxlength="60"><span class="error"></span>
					</div>
					<div class="dizhi-box">
						<span style="color: #F00;">*</span>邮政编码：<input
							id="address-zipcode" class="address-zipcode" type="text" value=""
							name="adrZipCode" size="10" maxlength="20"><span
							class="error"></span>
					</div>
					<div class="dizhi-box">
						<span style="color: #F00;">*</span>收货人姓名：<input id="address-name"
							class="address-name" type="text" value="" name="adrName"
							size="15" maxlength="15"><span class="error"></span>
					</div>
					<div class="dizhi-box">
						<span style="color: #F00;">*</span>电话号码：<input id="address-phone"
							class="address-phone" type="text" value="" name="adrPhone"
							size="15" maxlength="20"><span class="error"></span>
					</div>
					<hr>
					<h4>希望送货的时间</h4>
					<ul>
						<li id=""><input id="" class="ui-radio" type="radio"
							name="deliveryType" value="16"> <label id="">只工作日送货(双休日、假日不用送，写字楼/商用地址客户请选择)</label>
						</li>
						<li id=""><input id="" class="ui-radio" type="radio"
							name="deliveryType" value="32"> <label id="">只双休日、假日送货(工作日不用送)</label>
						</li>
						<li id=""><input id="" class="ui-radio" type="radio"
							name="deliveryType" value="64"> <label id="">学校地址/地址白天没人，请尽量安排其它时间送货
								(特别安排可能会超出预计送货天数)</label></li>
						<li id=""><input id="" class="ui-radio" type="radio"
							name="deliveryType" value="64"> <label id="">工作日、双休日与假期均可送货</label>
						</li>
					</ul>
					<hr>
					<h4>
						配送说明<span style="font-size: 12px; color: #999">（快递公司由商家根据情况选择，请不要指定。其他要求会尽量协调）</span>
					</h4>
					<input id="" class="comment" type="text" value=""
						name="deliveryComment">
				</div>
			</div>
			<div id="on-four">
				<h3>您的手机</h3>
				<p class="text">为了方便您的操作和账户安全，请绑定手机号。</p>
				<div class="on-four-on-one">
					手机号<input id="" class="small" type="text" value="" name="mobile"
						maxlength="11" autocomplete="off"> <span class="error"></span>
				</div>
				<input id="" class="btn-mini" type="button" value="获取手机动态码">
				<div class="on-four-on-one">
					动态码<input id="" class="small" type="text" value=""
						name="verifycode" autocomplete="off"> <span class="error"></span>
				</div>
			</div>
			<div id="on-five">
				<input class="btn-buy" type="submit" onclick="" value="提交订单"
					name="buy" gaevent="cart/orderconfirm">
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
