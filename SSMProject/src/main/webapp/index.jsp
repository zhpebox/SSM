<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<% String path = request.getContextPath(); %>
<html>
<body>
<form id="loginForm" action="">
	<input id="userName" name="userName" value="rt">
	<input id="address" name="address" value="WE">
</form>
<h2>Hello World!</h2>
<script type="text/javascript" src="<%=path%>/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">  
	alert("AAA");
    $(document).ready(function(){  
    	alert("BBB");
        var saveDataAry=[];  
        var data1={"userName":"test","address":"gz"};  
        var data2={"userName":"ququ","address":"gr"};  
        saveDataAry.push(data1);  
        saveDataAry.push(data2);   

// 		var form = new mini.Form("#loginForm");
//         var data = form.getData(); //获取表单多个控件的数据
//         var jss = mini.encode(data); //序列化成JSON

        $.ajax({ 
            type:"POST", 
            url:"user/saveUser", 
//             dataType:"json",      
//             contentType:"application/json",
  			contentType: "application/json",//不加此项就会出现415错误代码
    		dataType:"JSON",
            data:JSON.stringify(saveDataAry), 
// 			data:saveDataAry, 
// 			data:jss,
            success:function(data){ 
                                       
            } 
         }); 
    });  
</script> 
</body>
</html>
