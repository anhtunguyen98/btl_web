<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Bill</title>
</head>
<%UserAdmin admin=(UserAdmin)session.getAttribute("admin");
if(admin==null){
	response.sendRedirect("/BaiTapLon/LoginAdmin");
	return;
}
%>
<body>
	<% ArrayList<Bill> bills = (ArrayList<Bill>)request.getAttribute("bills"); %>
		<div style="width: 100%; height: 50px; text-align: left">
    <button onclick="quit()">Quay lại</button>
	</div>
        <h1> All Bill</h1>
        <table border="2" cellpadding="10px">
                  <tr>
                
                        <th>ID</th>
                        <th>Tên Khách Hàng</th>
                        <th>Đường</th>
                        <th>Thành Phố</th>
                        <th>Số ĐT</th>
                        <th>Tổng Số (VND)</th>
                        <th>Chi Tiết</th>
                        
                    </tr>
                <%for(Bill bill:bills){  bill.setTotal(); %>
                	
                  
                    <tr>
                        <td><%=bill.getId() %></td>
                        <td><%=bill.getFistname()+" "+bill.getLastname() %></td>
                        <td><%=bill.getStreet_address() %></td>
                        <td><%=bill.getCity() %></td>
                        <td><%=bill.getPhone() %></td>
                        <td><%=bill.getTotal() %></td>
                        <td><a href="DetailBill?id=<%=bill.getId() %>">Chi Tiết</a></td>
                     
                    </tr>

                
                <%} %>
                </table><br>
        
        
    </body>
<script >function quit() {
        location.href="AdminHome";
    }</script>
</html>