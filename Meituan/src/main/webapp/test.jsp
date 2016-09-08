<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     验证码：<s:textfield name="rand" size="5"></s:textfield>  
  <img src="random.action"  onclick="changeValidateCode(this)" title="点击图片刷新验证码"/>   
     
</body>
</html>