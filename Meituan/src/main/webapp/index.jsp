<%@ page contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<title>美团网</title>
<link href="css/index.css"  type="text/css" rel="stylesheet" />
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="js/index.js"></script>   
</head>
<body>
    <div id="all">
      <!-- 头部-->
       <div id="header">
       <div id="body-header-box01">
           <div class="h_top">
              <!-- 上-》左-->
              <ul class="h_top_left">
                 <li>
                 <a href="page/login.jsp"><span style="color:#F69">登录</span></a>&nbsp;
                 <a href="page/register.jsp">注册</a>
                 </li>
              </ul>
              <!--上-》右 -->
              <ul class="h_top_right">
                 <li>
                   <a href="page/MyMeituan.jsp"><span>我的美团</span></a>
                  <div>
	                   <ul id="h_top_right_mymt">
	                     <li class="mymt"><a href="page/order.jsp">我的订单</a></li>
	                     <li class="mymt"><a href="" >我的评价</a></li>
	                     <li class="mymt"><a href="">我的积分</a></li>
	                     <li class="mymt"><a href="">我的余额</a></li>
	                     <li class="mymt"><a href="">账户设置</a></li>   
	                   </ul>
                   </div>
                 </li>
                 <li><a href="">最近浏览</a></li>
                  <li>
                   <a href="page/shopping.jsp"><span>我的购物车</span></a>
                   <ul id="h_top_right_myshopping">
                     <li class="myshopping"><a href="">商品1</a></li>
                     <li class="myshopping"><a href="">商品2</a></li>
                   </ul>
                 </li>
                 
                 <li>
                   <a href="back/shopLogin.jsp"><span>我是商家</span></a>
                   <ul id="h_top_right_shangjia">
                     <li class="shangjia"><a href="">登录商家中心</a></li>
                     <li class="shangjia"><a href="">商家营销平台</a></li>
                   </ul>
                 </li>
              </ul>
           </div>
           </div>
           <!--中-->
           <div class="h_body">
              <a id="img" href="index.jsp"><img src='images/meituan.com.png' /></a>
              <div class="h_body_search">
                 <input class="text" type="text" placeholder=" &nbsp;&nbsp;请输入商品名称或地址等" name="text">
                 <a href="#" id="search"><span>搜索</span></a>
              </div>
              
               <ul class="h_body_hot">
                   <li><a href="page/typeShop.jsp">美食</a></li>
                   <li><a href="page/typeShop.jsp">酒店/客栈</a></li>
                   <li><a href="page/typeShop.jsp">KTV</a></li>
                   <li><a href="page/typeShop.jsp">休闲娱乐</a></li>
                   <li><a href="page/typeShop.jsp">生活服务</a></li>
                   <li><a href="page/typeShop.jsp">新品上架</a></li>
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
            	<li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">美食</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">酒店/客栈</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">电影/在线选座</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">KTV</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">休闲娱乐</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">周边游/旅游</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">生活服务</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">购物</a></li>
                <li class="b_body_right_li"><a class="b_body_left_li_a" href="page/typeShop.jsp">丽人</a></li>
              
            </ul>
            </div>
            <div id="b_body_right_foot">
            	<div id="goods1" class="goods"></div>
                <div id="goods2" class="goods"></div>
                <div id="goods3" class="goods"></div>
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
                        <a href="page/typeShop.jsp" ><img src="images/meishi.jpg" /></a>
                        <a href="page/typeShop.jsp" id="a">美食</a>
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
                <div class="box6" id="meishi">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多美食团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="xiuxian">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/xiuxian.jpg" /></a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多休闲娱乐团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="dianying">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/dianying.jpg" /></a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多电影团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="jiudian">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/jiudian.jpg" /></a>
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
                <div class="box6" >
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多酒店团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="shenghuo">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/shenghuo.jpg" /></a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多生活服务团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="gouwu">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/gouwu.jpg" /></a>
                        <a href="page/typeShop.jsp" id="a">购物</a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多购物团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="liren">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/liren.jpg" /></a>
                        <a href="page/typeShop.jsp" id="a">丽人</a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
                <div class="box9">
                	<a href="page/typeShop.jsp">更多丽人团购，请点击查看></a>
                </div>
            </div>
            <div class="box3">
            	<div class="box8" id="lvyou">
                    <div class="box4">
                        <a href="page/typeShop.jsp" ><img src="images/lvyou.jpg" /></a>
                        <a href="page/typeShop.jsp" id="a">旅游</a>
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
                <div class="box6">
                	<div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                    <div class="box7"></div>
                </div>
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
                    <p class="dian"><span style="color:#000;font-size:18px;">10107888</span>(9:00~23:00)</p>
                    <p class="tui">退款、退换货、查看美团劵</p>
                    <a href="">参考教程，轻松搞定！</a>
                </div>
            </div>      
        </div>
        <div id="content-right">
        	<div id="box2"><img src="images/hui.png"/></div>
        </div>     
    </div>
    
    <div id="footer">
       
    </div>
</body>
</html>
