<%@ page language="java" import="java.util.*,org.fmz.model.Student" pageEncoding="utf-8"%>
<%@ page import="org.fmz.dao.StudentDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
	+ request.getServerName() + ":" + request.getServerPort()
	+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>更新学生信息</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/stupdate.js"></script>
	<style type="text/css">
	  span{color:red;}
	  .form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 10px;
}
.form-signin input[type="text"],.form-signin input[type="password"] {
	font-size: 16px;
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
.form-signin {
	max-width: 550px;
	padding: 19px 29px 29px;
	margin:0 auto;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}
	</style>

	</head>
	<body>
		<form class="form-signin" action="stupdate" method="post" onSubmit="return checkstId() && checkstDept() && checkstName()">
			学号：
			<input type="text" name="stId" value="${student.stId }" readonly="readonly"  class="input">
			<br>
			姓名：
			<input class="input" type="text" name="stName" value="${student.stName }" 
			onblur="checkstName()" onFocus="clearstName()" >
			<span id="stName1"></span>
			<br>
			系别：
			<input class="input" type="text" name="stDept" value="${student.stDept }" onblur="checkstDept()" onFocus="clearstDept()" >
			<span id="stDept1"></span>
			<br>
			<input type="submit" value="提交" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" class="btn btn-success" onclick="window.location.href='main.jsp'"  value="返回"> 
		</form>
	</body>
</html>
