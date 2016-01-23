<%@ page language="java" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
%>
<!DOCTYPE HTML>
 <html>
   <head>
     <title>Servlet3.0实现文件上传</title>
   </head>
   
   <body>
         <fieldset>
             <legend>
                 上传单个文件
             </legend>
             <!-- 文件上传时必须要设置表单的enctype="multipart/form-data"-->
             <form action="UploadServlet"
                 method="post" enctype="multipart/form-data">
                 上传文件：
                 <input type="file" name="file">
                 <br>
                 <input type="submit" value="上传">
             </form>
         </fieldset>
         <hr />
       <fieldset>
             <legend>
                 上传多个文件
             </legend>
             <!-- 文件上传时必须要设置表单的enctype="multipart/form-data"-->
             <form action="<%=path%>/UploadServlet"
                method="post" enctype="multipart/form-data">
                 上传文件：
                 <input type="file" name="file1">
                 <br>
                 上传文件：
                 <input type="file" name="file2">
                 <br>
                 <input type="submit" value="上传">
             </form>
         </fieldset>
     </body>
 </html>