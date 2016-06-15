<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="upload/uploadfile.do" method="post" enctype="multipart/form-data">
		<input type="file" name="file">
		<input type="submit" value="提交">
	</form>
</body>
</html>