<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	html{
		background: #6f6f62
	}
	
	body{
		margin: 0;
		border: 0;
	}
	#logindiv{
		position: absolute;
	    top: 30%;
	    left: 35%;
	    height: 200px;
	    width: 400px;
	    border: solid .5px;
	    box-shadow:0px 0px 1px #080505,3px 3px 2px #080505;
    	border-radius:5px;
	    background-color: #6a676b
	}
	form{
		text-align: center;
		height: 200px;
		vertical-align: middle;
	}
</style>
</head>
<body>
	<div id="logindiv">
		<form action="../userController/userlogin.do" method="post" name="fm">
			<span> 用户名 ：<input type="text" maxlength="30" name="userName"></span><br>
			<span> 密    码 ： <input type="password" name="passWord"></span><br/>
			<input type="submit" value="登陆">
		</form>
	</div>
</body>
</html>