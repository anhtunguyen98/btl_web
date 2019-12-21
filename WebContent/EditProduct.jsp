<%@page import="models.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%UserAdmin admin=(UserAdmin)session.getAttribute("admin");
if(admin==null){
	response.sendRedirect("/BaiTapLon/LoginAdmin");
	return;
}
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Product product = (Product)request.getAttribute("product");
        %>
        <h1>EDIT</h1>
        <form method="post" action="Update" >
            <table border="2" cellpadding="10px" style="margin-top:50px">
		<tr>
                
                <th>Tên</th>
                <th>Phụ kiện</th>
                <th>Bảo hành</th>
                <th>Thông Tin</th>
                <th>Giá</th>
               
        </tr>
        <tr>
        		<input type="hidden" value=<%=product.getId() %> name="id">
                <td><input type="text" name="nameproduct" value=<%=product.getName() %>></td>
                
                <td><input type="text" name="phukien" value=<%=product.getPhukien() %>></td>
                <td><input type="text" name="baohanh"value=<%=product.getBaohanh() %>></td>
                <td><input type="text" name="thongtin"value=<%=product.getThongtin() %>></td>
                <td><input type="text" name="gia" value=<%=product.getGia() %>></td>
         </tr>
         
		
	
	
	
	
	 </table><br>
	 <input type="submit" value="Update"  >
	
	
	</form>
       
            
        
    </body>
</html>