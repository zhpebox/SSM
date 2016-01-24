<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>restful-spring</title>
<script type="text/javascript" src="jquery.min.js"></script>
<script type="text/javascript">

	
	
	function postUser()
	{
		$.ajax(
				"user/saveUserInfo"
                , {
                    async: true
			        , cache: false
                    , dataType: "json"
                    //, contentType: "application/x-www-form-urlencoded; charset=utf-8" 
			        , data: { "name": "周华健"
	            			, "password": "0109"
	                		}
			        , type: "POST"
			        , processData: true
			        , success: function (data, textStatus, jqXHR) {
			            if (textStatus == "success") {
			            	alert(data.message);
			            }
			        }
			        , error:function(XMLHttpRequest, textStatus, errorThrown){
			        	 alert(XMLHttpRequest.status);
			        	 alert(XMLHttpRequest.readyState);
			        	 alert(textStatus);
			        	 alert(errorThrown);
		            }

                }
    	);
		
	}
	
	
	function searchInfo()
	{
		$.ajax(
				"user/searchUserInfo"
				
                , {
                    async: true
			        , cache: false
                    , dataType: "json"
			        , data: {}
			        , type: "GET"
			        , processData: true
			        , success: function (data, textStatus, jqXHR) {
			            if (textStatus == "success") {
			            	alert(data.rows);
			            }
			        }
			        , error:function(XMLHttpRequest, textStatus, errorThrown){
			        	 alert(XMLHttpRequest.status);
			        	 alert(XMLHttpRequest.readyState);
			        	 alert(textStatus);
			        	 alert(errorThrown);
		            }

                }
    	);
		
	}
	
	
	function searchServlet()
	{
		$.ajax(
				"HuiDiaoServlet"
				
                , {
                    async: true
			        , cache: false
                    , dataType: "json"
			        , data: {}
			        , type: "POST"
			        , processData: true
			        , success: function (data, textStatus, jqXHR) {
			            if (textStatus == "success") {
			            	alert(data.message);
			            }
			        }
			        , error:function(XMLHttpRequest, textStatus, errorThrown){
			        	 alert(XMLHttpRequest.status);
			        	 alert(XMLHttpRequest.readyState);
			        	 alert(textStatus);
			        	 alert(errorThrown);
		            }

                }
    	);
		
	}
</script>
<script>
	var es = new EventSource('HuiDiaoServlet');
	alert(es);
	es.onmessage = function(event)
    {
		console.log(event);
        //这个方法没进来
        document.getElementById("displaytxt").innerHTML += event.data + "<br />";
    };
</script>
</head>
<body>
	<input type="button" id="btn" name="btn" value="添加" onclick="postUser()">
	<input type="button" id="searchinfo" name="searchinfo" value="查询" onclick="searchInfo()">
	<input type="button" id="searchservlet" name="searchservlet" value="servlets" onclick="searchServlet()">
	<div id="displaytxt">111</div>
</body>
</html>