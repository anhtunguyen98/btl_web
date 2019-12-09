<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="models.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>AddProduct</title>
</head>
<%UserAdmin admin=(UserAdmin)session.getAttribute("admin");
if(admin==null){
	response.sendRedirect("/BaiTapLon/LoginAdmin");
	return;
}
%>
<body>
	<form action="AddProduct" method="post" accept-charset="UTF-8">
	<table border="2" cellpadding="10px" style="margin-top:50px" >
		<tr>
                
                <th>Tên</th>
                <th>Phụ kiện</th>
                <th>Bảo hành</th>
                <th>Thông Tin</th>
                <th>Giá</th>
               
        </tr>
        <tr>
                <td><input type="text" name="nameproduct"></td>
                
                <td><input type="text" name="phukien"></td>
                <td><input type="text" name="baohanh"></td>
                <td><input type="text" name="thongtin"></td>
                <td><input type="text" name="gia"></td>
         </tr>
         
		<tr><th>Ảnh 1</th>
                <th>Ảnh 2</th>
                <th>Ảnh 3</th>
                <th>Ảnh 4</th> </tr>
        <tr>
        	<td><input type ="file" name="img1"></td>
                <td><input type ="file" name="img2"></td>
                <td><input type ="file"  name="img3"></td>
                <td><input type ="file" name="img4"></td>
        
        </tr>
	
	
	
	
	 </table><br>
	 <input type="submit" value="Thêm Sản Phẩm">
	
	
	</form>
	
</body>
</html>