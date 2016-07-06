<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Basic Layout - jQuery EasyUI Demo</title>
    <link rel="stylesheet" type="text/css" href="../css/themes/default/easyui.css">
    <link rel="stylesheet" type="text/css" href="../css/themes/icon.css">
    <link rel="stylesheet" type="text/css" href="../css/demo/demo.css">
    <link rel="stylesheet" type="text/css" href="../css/default.css">
    <script type="text/javascript" src="../js/jquery.min.js"></script>
    <script type="text/javascript" src="../js/jquery.easyui.min.js"></script>
    <script type="text/javascript">
    	$(function(){
    		$('#tt').tree({
    		   data:[{
    	    	    "id":1,
    	    	    "text":"menu",
    	    	    "iconCls":"icon-ok"
    	    	},{
    	    	    "text":"Languages",
    	    	    "state":"closed",
    	    	    "children":[{
    	    	        "text":"User",
    	    	        "url":"../jsp/usermanage.jsp"
    	    	    },{
    	    	        "text":"C#",
    	    	        "url":"../jsp/error.jsp"
    	    	    }]
    	    	}],
    			onClick:function(node){
    				open(node.text,node.url);
    				console.log(node.url)
    			}
    		});
    	})
  		function open(text, url) {
	        if ($("#tabs").tabs('exists', text)) {
	            $('#tabs').tabs('select', text);
	        } else {
	            $('#tabs').tabs('add', {
	                title : text,
	                closable : true,
	                href : url
	            });
	        }
	    }

    </script>
</head>
<body>
    <div class="easyui-layout" style="width:100%;" fit=true >
        <div data-options="region:'north'" style="height:50px;text-align:center;">
        	<h2>测试用例</h2>
        </div>
        <div data-options="region:'south',split:true" style="height:50px;text-align:center;">
        	欢迎来到这里
        </div>
        <div data-options="region:'east',split:true" title="East" style="width:100px;">
        </div>
        <div data-options="region:'west',split:true" title="West" style="width:100px;">
			<ul id="tt"></ul>
        </div>
        <div data-options="region:'center'">
        	<div class="easyui-tabs" style="width:400px;height:100px;" fit=true id="tabs">
			</div>
        </div>
    </div>
</body>
</html>