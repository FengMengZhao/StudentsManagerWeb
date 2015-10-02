<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/updatepassword.js"></script>
<style type="text/css">
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #f5f5f5;
}

body,div,dl,dt,dd,ul,ol,li,h1,h2,h3,h4,h5,h6,pre,form,fieldset,input,p,blockquote,th,td
	{
	margin: 0;
	padding: 0;
}

.form-signin {
	max-width: 500px;
	padding: 19px 29px 29px;
	margin: 0 auto 20px;
	background-color: #fff;
	border: 1px solid #e5e5e5;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, .05);
}

.form-signin .form-signin-heading,.form-signin .checkbox {
	margin-bottom: 15px;
}

.form-signin input[type="text"],.form-signin input[type="password"] {
	height: auto;
	margin-bottom: 15px;
	padding: 7px 9px;
}
.labelError1{line-height: 9px; font-size: 10pt; color: #f40000; border: 1px #ffb8b8 solid; padding: 8px 8px 8px 35px; background: url(/StudentManagerWeb/images/error.png) no-repeat; background-color: #fef2f2;}
</style>
</head>
<body>
   <form action="pre" class="form-signin"  method="post"  onsubmit="return check();">
         <h2 class="form-signin-heading">修改密码</h2>
 			<table >
               <tr>
                <td >新密码:</td>
                <td  ><input type="password" name="newpassword" id="newpassword" class="input"></td>
                <td><label class="labelError1" id="newpasswordError"> </label></td>
               </tr>
                
               <tr>
                <td >确定新密码:</td>
                <td ><input type="password" name="repassword" id="repassword" class="input"></td>
                <td ><label class="labelError1" id="repasswordError"> </label></td>
                </tr>
                
               <tr>
                 <td></td>
                 <td><button class="btn btn-primary" type="submit">修改</button>
                      <input type="reset" class="btn btn-success" value="清 除">
                 </td>
                 <td></td>
               </tr>
            </table>
         <font color="red">${error }</font>
        </form>

</body>
</html>