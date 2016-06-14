<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="refresh" content="0.2;url=./userController/checkuser.do">
<script type="text/javascript" src="./js/jquery-2.2.4.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h2>Hello World!</h2>

<form action="./userController/adduser.do" method="post" name="fm">
	  用户名 ： <input type="text" maxlength="30" name="userName"><br/>
	  密    码 ： <input type="password" name="passWord"><br/>
	  性    别 ：<select name=sex> 
	  			<option value="1">男</option>
	  			<option value="0">女</option>
	  		</select><br/>
	  年    龄 ：<input type="number" name=age><br/>
	  <input type="submit" value="注 册">
</form>
<script type="text/javascript">
	function submit1(){
		//var data1=$("form").serialize();
		$.ajax({
			url:"./userController/adduser.do",
			contentType:"application/json",
			type:"post",
			data:'{"username":"admin2","password":"admin","sex":"1","age":"10"}',
			success:function(data){console.log(data)}
		});
		//console.log(data);
	}
	function show(data1){
		console.log(data1)
	}
</script>
</body>
</html>
