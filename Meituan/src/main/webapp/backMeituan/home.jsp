<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link href="assets/css/codemirror.css" rel="stylesheet" />
<script src="assets/js/ace-extra.min.js"></script>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/dist/echarts.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<title>无标题文档</title>
</head>

<body>
	<div class="page-content clearfix">
		<div class="alert alert-block alert-success">
			<button type="button" class="close" data-dismiss="alert">
				<i class="icon-remove"></i>
			</button>
			<i class="icon-ok green"></i>欢迎使用<strong class="green">后台管理系统<small>(v1.2)</small></strong>,你本次登陆时间为2016年7月12日13时34分，登陆IP:192.168.1.110.
		</div>
		<div class="state-overview clearfix">
			<div class="col-lg-3 col-sm-6">
				<section class="panel"> <a href="#" title="商城会员">
					<div class="symbol terques">
						<i class="icon-user"></i>
					</div>
					<div class="value">
						<h1>${order.alluser}</h1>
						<p>商城用户</p>
					</div>
				</a> </section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol red">
					<i class="icon-tags"></i>
				</div>
				<div class="value">
					<h1>0</h1>
					<p>分销记录</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol yellow">
					<i class="icon-shopping-cart"></i>
				</div>
				<div class="value">
					<h1>${order.allorder}</h1>
					<p>商城订单</p>
				</div>
				</section>
			</div>
			<div class="col-lg-3 col-sm-6">
				<section class="panel">
				<div class="symbol blue">
					<i class="icon-bar-chart"></i>
				</div>
				<div class="value">
					<h1>${order.alls}</h1>
					<p>交易记录</p>
				</div>
				</section>
			</div>
		</div>
		<!--实时交易记录-->
		<div class="clearfix">
			<div class="t_Record">
				<div id="main"
					style="height: 300px; overflow: hidden; width: 100%; overflow: auto"></div>
			</div>

		</div>
		<script type="text/javascript">
     $(document).ready(function(){
		 
		  $(".t_Record").width($(window).width()-320);
		  //当文档窗口发生改变时 触发  
    $(window).resize(function(){
		 $(".t_Record").width($(window).width()-320);
		});
 });
	 
	 
        require.config({
            paths: {
                echarts: './assets/dist'
            }
        });
        require(
            [
                'echarts',
				'echarts/theme/macarons',
                'echarts/chart/line',   // 按需加载所需图表，如需动态类型切换功能，别忘了同时加载相应图表
                'echarts/chart/bar'
            ],
            function (ec,theme) {
                var myChart = ec.init(document.getElementById('main'),theme);
                $.post("../order/data",function(data){
                	var money=[];
                	var mo=[];
                	for (var i = 0; i < data.length; i++) {
						money.push(data[i].status);
						mo.push(data[i].morder);
					}         		
                
               option = {
    title : {
        text: '月购买订单交易记录',
        subtext: '实时获取用户订单购买记录'
    },
    tooltip : {
        trigger: 'axis'
    },
    legend: {
        data:['所有订单','交易金额']
    },
    toolbox: {
        show : true,
        feature : {
            mark : {show: true},
            dataView : {show: true, readOnly: false},
            magicType : {show: true, type: ['line', 'bar']},
            restore : {show: true},
            saveAsImage : {show: true}
        }
    },
    calculable : true,
    xAxis : [
        {
            type : 'category',
            data : ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月']
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'所有订单',
            type:'bar',
            data:mo,
            markPoint : {
                data : [
                    {type : 'max', name: '最大值'},
                    {type : 'min', name: '最小值'}
                ]
            }           
        },{
            name:'交易金额',
            type:'bar',
            data:money,
            markPoint : {
                data : [
                    {name : '年最高', value : 172, xAxis: 7, yAxis: 172, symbolSize:18},
                    {name : '年最低', value : 23, xAxis: 11, yAxis: 3}
                ]
            },
           
		}
    ]
};
                myChart.setOption(option);
                },'json');
            }
        );
            
    </script>
	</div>
</body>
</html>
