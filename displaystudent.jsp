<%@ page language="java" import="java.util.*,org.fmz.model.Student"
	pageEncoding="utf-8"%>
<%@ page import="org.fmz.dao.impl.*"%>
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
		<title>显示用户信息</title>

     <style type="text/css">
       input[type="text"]{
              height: auto;
	          margin-bottom: 15px;
	          padding: 3px 9px;
            }
     </style>
	</head>

	<body>

        <form action="searchById" method="post">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        学号：<input type="text" name="searchId" placeholder="学生学号...">
         <i class="icon-search"></i>&nbsp;<button type="submit" class="btn btn-inverse"> 查找</button>
        </form>
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
			<c:forEach items="${list}" var="student">
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
			</c:forEach>
		</table>

		<hr>
		<a href="main.jsp" class="btn btn-success">返回主菜单</a>
		<hr>
	</body>
</html>
