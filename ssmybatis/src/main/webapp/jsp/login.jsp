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
	
	/* body{
		margin: 0;
		border: 0;
	} */
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
	table {
		margin: 0 auto;
    	margin-top: 50px;
	}
	table tr {
	    line-height: 34px
	}
	table tr:last-child {
	    text-align: center;
	}
	.reset {
		margin-left: 20px; 
	}
	/* form{
		text-align: center;
		height: 200px;
		vertical-align: middle;
	} */
</style>
</head>
<body>
	<div id="logindiv">
		<form action="../userController/userlogin.do" method="post" name="fm">
			<!-- <span> 用户名 ：<input type="text" maxlength="30" name="userName"></span><br>
			<span> 密    码 ： <input type="password" name="passWord"></span><br/>
			<input type="submit" value="登陆"> -->
			<table>
				<tr>
					<td>用户名：</td>
					<td><input type="text" maxlength="30" name="userName"></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" name="passWord"></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="登陆"><input class="reset" type="submit" value="注册"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>