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
  <c:if test="${not empty student }">
  <table  class="table table-hover table-condensed">
		    <tr>
				<td align="center">
					<strong>学号</strong>
				</td>
				<td align="center">
					<strong>姓名</strong>
				</td>
				<td align="center">
					<strong>系别</strong>
				</td>
				<td align="center" >
					<strong>执行操作</strong>
				</td>
			</tr>
				<tr>
					<td>
						<c:out value="${student.stId}" />
					</td>
					<td>
						<c:out value="${student.stName}" />
					</td>
					<td>
						<c:out value="${student.stDept}" />
					</td>
					<td>
						<a href="stdelete?id=${student.stId}" class="btn btn-danger">删除</a>
						<a href="pre?method=updateStudent&id=${student.stId}" class="btn btn-primary">更新</a>
					</td>
				</tr>
	
		</table>
</c:if >
<c:if test="${empty student }">
        <center><font color="red" size="+1">对不起！没有该学号对应的学生....</font></center>
</c:if>
		<hr>
		<a href="main.jsp" class="btn btn-success">返回主菜单</a>
		<hr>
  </body>
</html>
