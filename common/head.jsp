<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
		<title>学生信息管理系统主界面</title>
	</head>

	<body>
		<div class="row-fluid">
			<div class="span12">
				<div class="head">
					<div class="headLeft">
						<img src="${pageContext.request.contextPath}/images/logo.png" />
					</div><br/>
					<div class="headRight">
						欢迎管理员：
						<font color="red"><%=session.getAttribute("username")%></font>&nbsp;&nbsp;&nbsp;
						 <i class="icon-time"></i>&nbsp;&nbsp;<font id="today"></font>
					</div>
				</div>
			</div>
		</div> 
		<div class="row-fluid">
			<div class="span12">
				<div class="navbar">
					<div class="navbar-inner">
					   <a class="brand" href="main.jsp"><i class="icon-home"></i>&nbsp;首页</a>
						<ul class="nav">
							<li><a href="pre?method=studentAdd"><i class="icon-pencil"></i>&nbsp;添加学生信息 </a></li>
							<li><a href="showAllStudents"><i class="icon-book"></i>&nbsp;学生基本信息维护 </a></li>
							<li><a href="pre?method=gradeAdd"><i class="icon-wrench"></i>&nbsp;录入学生作业信息 </a></li>
							<li><a href="showAllStudentsGrade"><i class="icon-file"></i>&nbsp;学生作业信息维护 </a></li>
							<li><a href="pre?method=preupdatetepwd"><i class=" icon-cog"></i>&nbsp;修改密码</a></li>
							<li><a onclick="check()"><i class="icon-user"></i>&nbsp;退出系统</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
