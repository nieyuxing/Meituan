<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="css/style.css" />
<link href="assets/css/codemirror.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link
	href="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.css"
	rel="stylesheet" />
<script src="assets/js/jquery.min.js"></script>
<script
	src="http://cdn.bootcss.com/bootstrap-table/1.9.1/bootstrap-table.min.js"></script>
<script
	src="http://cdn.bootcss.com/bootstrap-table/1.9.1/locale/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='assets/js/jquery-2.0.3.min.js'>"
					+ "<"+"/script>");
</script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
				+ "<"+"/script>");
</script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/typeahead-bs2.min.js"></script>
<script src="assets/js/jquery.dataTables.min.js"></script>
<script src="assets/js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script>
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script src="assets/layer/layer.js" type="text/javascript"></script>
<script src="assets/laydate/laydate.js" type="text/javascript"></script>
<title>用户列表</title>
<script type="text/javascript">
	$(function() {
		initTable();
	});
	function initTable() {
		var queryUrl = '../user/data';
		$('#sample-table').bootstrapTable( {
			method : 'get',
			url : queryUrl,
			height : $(window).height() - 200,
			striped : true,
			pagination : true,
			pageSize : 50,
			pageList : [ 10, 25, 50, 100, 200 ],
			search : true,
			sidePagination : "client",
			showColumns : true,
			minimunCountColumns : 2, 
			columns: [
		              {
		                title: '用户id',
		                  field: 'usid',
		                  align: 'center',
		                  valign: 'middle',
		                  sortable: true
		              }, 
		              {
		                  title: '用户名',
		                  field: 'usname',
		                  align: 'center',
		                  valign: 'middle',
		              }, 
		              {
		                  title: '电话',
		                  field: 'telnum',
		                  align: 'center'
		              },
		              {
		                  title: '邮箱',
		                  field: 'email',
		                  align: 'center'
		              },
		              {
		                  title: '余额',
		                  field: 'purse',
		                  align: 'center',
		              },
		              {
		                  title: '身份证',
		                  field: 'idcard',
		                  align: 'center',
		              },
		              {
		                  title: '图片',
		                  field: 'text1',
		                  align: 'center',
		              },{
		                  title: '预留字段',
		                  field: 'text2',
		                  align: 'center',
		              },
		              {
		                  title: '操作',
		                  field: 'id',
		                  align: 'center',
		                  formatter:function(value,row,index){  
		               var e = '<a href="#" mce_href="#" onclick="member_edit(\''+ row.id + '\')">编辑</a> ';  
		               var d = '<a href="#" mce_href="#" onclick="member_del(\''+ row.id +'\')">删除</a> ';  
		                    return e+d;  
		                } 
		              }
		          ]
		});
	}
</script>
</head>

<body>
	<div class="page-content clearfix">
		<div id="Member_Ratings">
			<div class="d_Confirm_Order_style">
				<div class="search_style">
					<div class="title_names">搜索查询</div>
					<ul class="search_content clearfix">
						<li><label class="l_f">会员名称</label><input name="" type="text"
							class="text_add" placeholder="输入会员名称、电话、邮箱" style="width: 400px" /></li>
						<li><label class="l_f">添加时间</label><input
							class="inline laydate-icon" id="start" style="margin-left: 10px;" /></li>
						<li style="width: 90px;"><button type="button"
								class="btn_search">
								<i class="icon-search"></i>查询
							</button></li>
					</ul>
				</div>
				<!---->
				<div class="border clearfix">
					<span class="l_f"> <a href="javascript:ovid()"
						id="member_add" class="btn btn-warning"><i class="icon-plus"></i>添加用户</a>
						<a href="javascript:ovid()" class="btn btn-danger"><i
							class="icon-trash"></i>批量删除</a>
					</span> <span class="r_f">共：<b>2345</b>条
					</span>
				</div>
				<!---->
				<div class="table_menu_list">
					<table id="sample-table">
						
					</table>
				</div>
			</div>
		</div>
	</div>
	<!--添加用户图层-->
	<div class="add_menber" id="add_menber_style" style="display: none">
		<form>
		<ul class=" page-content">
		
			<li><label class="label_name">用&nbsp;&nbsp;户 &nbsp;名：</label><span
				class="add_name"><input value="" name="用户名" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			
			<li><label class="label_name">密码：</label><span
				class="add_name"><input name="密码" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">移动电话：</label><span
				class="add_name"><input name="移动电话" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li><label class="label_name">电子邮箱：</label><span
				class="add_name"><input name="电子邮箱" type="text"
					class="text_add" /></span>
				<div class="prompt r_f"></div></li>
			<li class="adderss"><label class="label_name">身份证：</label><span
				class="add_name"><input name="身份证" type="text"
					class="text_add" style="width: 350px" /></span>
				<div class="prompt r_f"></div></li>
			
		</ul>
		</form>
	</div>
</body>
<script>
	/*用户-添加*/
	$('#member_add').on(
			'click',
			function() {
				layer.open({
					type : 1,
					title : '添加用户',
					maxmin : true,
					shadeClose : true, //点击遮罩关闭层
					area : [ '800px', '' ],
					content : $('#add_menber_style'),
					btn : [ '提交', '取消' ],
					yes : function(index, layero) {
						var num = 0;
						var str = "";
						$(".add_menber input[type$='text']").each(
								function(n) {
									if ($(this).val() == "") {

										layer.alert(str += ""
												+ $(this).attr("name")
												+ "不能为空！\r\n", {
											title : '提示框',
											icon : 0,
										});
										num++;
										return false;
									}
								});
						if (num > 0) {
							return false;
						} else {
							layer.alert('添加成功！', {
								title : '提示框',
								icon : 1,
							});
							layer.close(index);
						}
					}
				});
			});
	/*用户-查看*/
	function member_show(title, url, id, w, h) {
		layer_show(title, url + '#?=' + id, w, h);
	}
	
	/*用户-编辑*/
	function member_edit(id) {
		layer.open({
			type : 1,
			title : '修改用户信息',
			maxmin : true,
			shadeClose : false, //点击遮罩关闭层
			area : [ '800px', '' ],
			content : $('#add_menber_style'),
			btn : [ '提交', '取消' ],
			yes : function(index, layero) {
				var num = 0;
				var str = "";
				$(".add_menber input[type$='text']").each(
						function(n) {
							if ($(this).val() == "") {
								layer.alert(str += "" + $(this).attr("name")
										+ "不能为空！\r\n", {
									title : '提示框',
									icon : 0,
								});
								num++;
								return false;
							}
						});
				if (num > 0) {
					return false;
				} else {
					var username= $("input[name='用户名']").val();
					var pwd= $("input[name='密码']").val();
					var telphone= $("input[name='移动电话']").val();
					var email= $("input[name='邮箱']").val();
					var idcard= $("input[name='身份证']").val();
					$.post("../user/edit",{usname:username,uspwd:pwd,telnum:telphone,email:email,idcard:idcard},function(data){
						alert(data);
					});
					layer.alert('修改成功！', {
						title : '提示框',
						icon : 1,
					});
					layer.close(index);
				}
			}
		});
	}
	/*用户-删除*/
	function member_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon : 1,
				time : 1000
			});
		});
	}
	laydate({
		elem : '#start',
		event : 'focus'
	});
</script>
</html>
