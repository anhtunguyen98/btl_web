<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="models.DAO.ProductDAO"%>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
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
	<% ArrayList<Product> listProduct = (ArrayList<Product>)request.getAttribute("products"); %>
		<div style="width: 100%; height: 50px; text-align: left">
    <button onclick="quit()">Quay lại</button>
	</div>
        <h1>Products</h1>
        <table border="2" cellpadding="10px">
            <tr>
                
                <th>Tên</th>
                <th>Phụ kiện</th>
                <th>Bảo hành</th>
                <th>Thông Tin</th>
                <th>Giá</th>
                <th>Edit</th>
            
            </tr>
			
			
            <%for(int i=0;i<listProduct.size();i++){
            	
            	%>
            	<tr>
                <td><%=listProduct.get(i).getName() %></td>
                <td><%=listProduct.get(i).getPhukien() %></td>
                <td><%=listProduct.get(i).getBaohanh() %></td>
                <td><%=listProduct.get(i).getThongtin() %></td>
                <td><%=listProduct.get(i).getGia() %> Đ</td>

                <td><a href="EditProduct?id=<%=listProduct.get(i).getId()%>">Edit</a></td>
                
            </tr>
            	
            	
            <% }%>

            </table><br>
        
        <a href="AddProduct">Add Product</a>
    </body>
    <script >
	    function quit() {
	        location.href="AdminHome";
	    }
	    
	    function confirmDelete(){
	    	confirm("Bạn có chắc muôn xóa sản phẩm này không?");
	    }
    </script>
</html>