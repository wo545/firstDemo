<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="../userController/userlogin.do" method="post" name="fm">
	  用户名 ： <input type="text" maxlength="30" name="userName"><br/>
	  密    码 ： <input type="password" name="passWord"><br/>
	  <input type="submit" value="登陆">
</form>
</body>
</html>