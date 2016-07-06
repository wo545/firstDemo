<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../css/demo/demo.css">
    <link rel="stylesheet" type="text/css" href="../css/default.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    	function adduser(){
    		var fd=$('fm').serialize();
    		console.log(fd);
    		console.log(JSON.stringify(fd));
    		$.ajax({
    			url:'../userController/adduser.do',
    			type:'post',
    			contentType:'application/json',
    			data:fd
    		});
    	}
    </script>
</head>
<body>
	<form id=fm action="../userController/adduser.do" method="post">
		username:<input type=text name=username>
		password:<input type=text name=password>
		age:<input type=text name=age>
		sex:<input type=text name=sex>
		<input type="button" onclick="adduser()" value="click this">
	</form>
	<script type="text/javascript">
    	function adduser(){
    		var fd=$('#fm').serialize();
    		console.log(fd);
    		console.log(JSON.stringify(fd));
    		$.ajax({
    			url:'../userController/adduser.do',
    			contentType:"application/json",
    			type:'post',
    			data:'[{"username":"asdf","password":"asdf","age":"12","sex":"1"},{"username":"asdf","password":"asdf","age":"12","sex":"1"}]'
    		});
    	}
    </script>
</body>
</html>