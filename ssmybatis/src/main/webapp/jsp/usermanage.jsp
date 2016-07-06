<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<div class="easyui-panel" title="user manager" style="width:100%">
		<div style="padding:50px 60px 20px 60px">
			<form id="ff" method="post">
		    	<table cellpadding="2">
		    		<tr>
		    			<td>Name:</td>
		    			<td><input class="easyui-textbox" type="text" name="username" data-options="required:true"></input></td>
		    		</tr>
		    		<tr>
		    			<td>Pass:</td>
		    			<td><input class="easyui-textbox" type="password" name="password" data-options="required:true"></input></td>
		    		</tr>
		    	</table>
		    </form>
		    <input  class="easyui-linkbutton" onclick="addClick()" value="submit"/>
		</div>
	</div>
	<script type="text/javascript">
	function addClick(){
		console.log("------")
		var data=toJson($('#ff'));
		console.log(data);
		
		$.ajax({
			type: 'POST',
			url:"./adduser.do",
			contentType:"application/json",
			//dataType: "json",
			data:'{"username":"admin2","password":"admin","sex":"1","age":"10"}',
			success:function(date){
				console.log(date);
			}
		});
	}
	function toJson(fm){
		var result={};
		var fd=fm.serializeArray()
		   $.each(fd, function() {    
			   console.log(this.name);
			   console.log(result[this.name]);
		       if (result[this.name]) {    
		           if (!result[this.name].push) {    
		        	   result[this.name] = [result[this.name]];    
		           }    
		           result[this.name].push(this.value || '');    
		       } else {    
		    	   result[this.name] = this.value || ''; 
		    	   console.log(result[this.name].push);
		       }    
		   });    
		   return JSON.stringify(result);    
	}
</script>
</body>
</html>