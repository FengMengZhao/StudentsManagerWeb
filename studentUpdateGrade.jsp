<%@ page language="java" import="java.util.*,org.fmz.model.StudentGrade" pageEncoding="utf-8"%>
<%@ page import="org.fmz.dao.StudentGradeDAO"%>
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

		<title>更新学生成绩信息</title>

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
		<form class="form-signin" action="sgupdate" method="post">
			学号：
			<input type="text" name="stId" value="${studentgrade.st_id }" readonly="readonly"  class="input">
			<br>
			姓名：
			<input class="input" type="text" name="stName" value="${studentgrade.st_name }" 
			onblur="checkstName()" onFocus="clearstName()" >
			<br>
			作业01：
			<input class="input" type="text" name="grade_01" value="${studentgrade.grade_01 }"><br>
			作业02：
			<input class="input" type="text" name="grade_02" value="${studentgrade.grade_02 }"><br>
			作业03：
			<input class="input" type="text" name="grade_03" value="${studentgrade.grade_03 }"><br>
			作业04：
			<input class="input" type="text" name="grade_04" value="${studentgrade.grade_04 }"><br>
			作业05：
			<input class="input" type="text" name="grade_05" value="${studentgrade.grade_05 }"><br>
			作业06：
			<input class="input" type="text" name="grade_06" value="${studentgrade.grade_06 }"><br>
			作业07：
			<input class="input" type="text" name="grade_07" value="${studentgrade.grade_07 }"><br>
			作业08：
			<input class="input" type="text" name="grade_08" value="${studentgrade.grade_08 }"><br>
			作业09：
			<input class="input" type="text" name="grade_09" value="${studentgrade.grade_09 }"><br>
			作业10：
			<input class="input" type="text" name="grade_10" value="${studentgrade.grade_10 }"><br>
			作业11：
			<input class="input" type="text" name="grade_11" value="${studentgrade.grade_11 }"><br>
			作业12：
			<input class="input" type="text" name="grade_12" value="${studentgrade.grade_12 }"><br>
			作业13：
			<input class="input" type="text" name="grade_13" value="${studentgrade.grade_13 }"><br>
			作业14：
			<input class="input" type="text" name="grade_14" value="${studentgrade.grade_14 }"><br>
			
			<input type="submit" value="提交" class="btn btn-primary">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" class="btn btn-success" onclick="window.location.href='main.jsp'"  value="返回"> 
		</form>
	</body>
</html>
			