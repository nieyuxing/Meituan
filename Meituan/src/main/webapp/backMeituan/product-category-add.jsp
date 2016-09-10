<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
 <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/style.css"/>       
        <link rel="stylesheet" href="assets/css/ace.min.css" />
        <link rel="stylesheet" href="assets/css/font-awesome.min.css" />
        <link href="Widget/icheck/icheck.css" rel="stylesheet" type="text/css" />
	    <script src="js/jquery-1.9.1.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
<title>添加产品分类</title>
</head>
<body>
<div class="type_style">
 <div class="type_title">产品类型信息</div>
  <div class="type_content">
  <div class="Operate_btn">
  <a href="javascript:add()" class="btn  btn-warning"><i class="icon-edit align-top bigger-125"></i>新增子类型</a>
  <a href="javascript:del()" class="btn  btn-danger"><i class="icon-trash   align-top bigger-125"></i>删除该类型</a>
  </div>
  <form action="" method="post" class="form form-horizontal" id="form-user-add">
  	 <div class="Operate_cont clearfix" style="display:none">
      <label class="form-label"><span class="c-red">*</span>分类编号：</label>
      <div class="formControls ">
      	<c:if test="${empty list}">
      	       <input type="text" class="input-text" value="" placeholder="" id="ptid" name="product-category-name">
      	</c:if>
      	 <c:if test="${not empty list}">
      	        <input type="text" class="input-text" value="${list.tid}" placeholder="" id="ptid" name="product-category-name">
      	</c:if>
      </div>
    </div> 
    <div class="Operate_cont clearfix">
      <label class="form-label"><span class="c-red">*</span>分类名称：</label>
      <div class="formControls ">
      	<c:if test="${empty list}">
      	       <input type="text" class="input-text" value="" placeholder="" id="name" name="product-category-name">
      	</c:if>
      	 <c:if test="${not empty list}">
      	        <input type="text" class="input-text" value="${list.name}" placeholder="" id="name" name="product-category-name">
      	</c:if>
      </div>
    </div>
        <div class="Operate_cont clearfix">
      <label class="form-label"><span class="c-red">*</span>类型排序：</label>
      <div class="formControls ">
      <c:if test="${empty list}">
        		<input type="text" class="input-text" value="" placeholder="" id="fptid" name="product-category-name">
      	</c:if>
      	<c:if test="${not empty list}">
        		<input type="text" class="input-text" value="${list.tfid}" placeholder="" id="fptid" name="product-category-name">
      	</c:if>
      </div>
    </div>

    <div class="">
     <div class="" style=" text-align:center">
	  <a href="javascript:update()" class="btn btn-primary radius"><i class="icon-trash   align-top bigger-125"></i>修改该类型</a>      </div>
    </div> 
  </form>
  </div>
</div> 

<script type="text/javascript" src="Widget/icheck/jquery.icheck.min.js"></script> 
<script type="text/javascript" src="Widget/Validform/5.3.2/Validform.min.js"></script>
<script type="text/javascript" src="assets/layer/layer.js"></script>
<script type="text/javascript" src="js/H-ui.js"></script> 
<script type="text/javascript" src="js/H-ui.admin.js"></script>
<script type="text/javascript">
function add(){
	var name=$("#name").val();
	var fptid=$("#fptid").val();
	 if("" == name || name == null){
		alert("请输入你要添加的子类名称");
	}else if("" == fptid || fptid == null){
		alert("请输入你的类型排序编号");
	}else{ 
	$.post("../productType/add/",{name:name,fptid:fptid},function(data){
		if(data>0){
			alert("恭喜你，添加成功！！");
			parent.document.location.reload();
		 	$("#name").val("");
			$("#fptid").val("");  
		}else{
			alert("不好意思，添加失败啦!!!")
		}
	
	},"json");//返回数据的格式
	}
}
function update(){
	var ptid=$("#ptid").val();
	var name=$("#name").val();
	var fptid=$("#fptid").val();
	$.post("../productType/updatePros",{ptid:ptid,name:name,fptid:fptid},function(data){
		if(data==true){
			alert("修改成功");
			$("#name").val("");
			$("#fptid").val("");
			parent.document.location.reload();
			
		}
	},"json");//返回数据的格式
}
function del(){
	var name=$("#name").val();
	if(confirm("是否确定删除？")){
		$.post("../productType/del/",{name:name},function(data){
			if(data==true){
				alert("删除成功");
				parent.document.location.reload();
			}
		},"json");//返回数据的格式
	}
}
$(function(){
	$('.skin-minimal input').iCheck({
		checkboxClass: 'icheckbox-blue',
		radioClass: 'iradio-blue',
		increaseArea: '20%'
	});
	
	$("#form-user-add").Validform({
		tiptype:2,
		callback:function(form){
			form[0].submit();
			var index = parent.layer.getFrameIndex(window.name);
			parent.$('.btn-refresh').click();
			parent.layer.close(index);
		}
	});
});
</script>
</body>
</html>