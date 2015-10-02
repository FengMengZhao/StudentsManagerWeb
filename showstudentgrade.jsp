<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询结果页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body>
  <c:if test="${not empty studentgrade }">
  
		<table  class="table table-hover table-condensed">
		    <tr>
				<td align="center">
					<strong>学号</strong>
				</td>
				<td align="center">
					<strong>姓名</strong>
				</td>
				<td align="center">
					<strong>作业1</strong>
				</td>
				<td align="center" >
					<strong>作业2</strong>
				</td>
				<td align="center">
					<strong>作业3</strong>
				</td>
				<td align="center" >
					<strong>作业4</strong>
				</td>
				<td align="center">
					<strong>作业5</strong>
				</td>
				<td align="center" >
					<strong>作业6</strong>
				</td>
				<td align="center">
					<strong>作业7</strong>
				</td>
				<td align="center" >
					<strong>作业7</strong>
				</td>
				<td align="center">
					<strong>作业8</strong>
				</td>
				<td align="center" >
					<strong>作业10</strong>
				</td>
				<td align="center">
					<strong>作业11</strong>
				</td>
				<td align="center" >
					<strong>作业12</strong>
				</td>
				<td align="center">
					<strong>作业13</strong>
				</td>
				<td align="center" >
					<strong>作业14</strong>
				</td>
			</tr>
			<tr>
				<td>
					<c:out value="${studentgrade.st_id}" />
				</td>
				<td>
					<c:out value="${studentgrade.st_name}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_01}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_02}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_03}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_04}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_05}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_06}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_07}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_08}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_09}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_10}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_11}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_12}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_13}" />
				</td>
				<td>
					<c:out value="${studentgrade.grade_14}" />
				</td>
				<td>
					<a href="sgdelete?id=${studentgrade.st_id}" class="btn btn-danger">删除</a>
					<a href="pre?method=updateStudentGrade&id=${studentgrade.st_id}" class="btn btn-primary">更新</a>
				</td>
			</tr>
		</table>
</c:if >
<c:if test="${empty studentgrade }">
        <center><font color="red" size="+1">对不起！没有该学号对应的学生....</font></center>
</c:if>
		<hr>
		<a href="main.jsp" class="btn btn-success">返回主菜单</a>
		<hr>
  </body>
</html>
