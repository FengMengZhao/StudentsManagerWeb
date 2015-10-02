<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<script language="javascript">
		alert("恭喜！密码修改成功!请重新登录");
		window.location.href="${pageContext.request.contextPath}/login.jsp";
</script>
    <%
      session.removeAttribute("username");
	  session.invalidate();
     %>
	

  </head>
  
  <body>

  </body>
</html>
