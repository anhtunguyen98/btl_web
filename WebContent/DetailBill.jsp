<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Bill</title>
</head>
<%UserAdmin admin=(UserAdmin)session.getAttribute("admin");
if(admin==null){
	response.sendRedirect("/BaiTapLon/LoginAdmin");
	return;
}
%>
<% ArrayList<Item> items = (ArrayList<Item>)request.getAttribute("items"); %>
		<div style="width: 100%; height: 50px; text-align: left">
    <button onclick="quit()">Quay lại</button>
	</div>
        <h1>Detail Bill </h1>
        <table border="2" cellpadding="10px">
                  <tr>
                
                        <th>ID</th>
                        <th>Tên Sản Phẩm</th>
                        <th>Số lượng</th>
                        <th>Tổng sô</th>
                        
                    </tr>
                <%for(Item item:items){  %>
                	
                  
                    <tr>
                        <td><%=item.getId() %></td>
                        <td><%=item.getProduct().getName()%></td>
                        <td><%=item.getQuantity() %></td>
     
                        <td><%=item.getProduct().getGia()*item.getQuantity() %></td>
                       
                     
                    </tr>

                
                <%} %>
                </table><br>
        
        
    </body>
<script >function quit() {
        location.href="ViewBill";
    }</script>
</html>