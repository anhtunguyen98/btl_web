<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="models.*"%>
<!DOCTYPE html>
<html>
<head>
<% User user=(User)session.getAttribute("user");
	ArrayList<Bill> bills=(ArrayList<Bill>) request.getAttribute("bills");
%>
 <link rel="stylesheet" href="css/account.css"/>
<title>Your Account</title>
</head>
<body>
	<jsp:include page="header.jsp"/>
	<div id="content">
            <div id="left_content">
                <div class="left_content1">
                    <img src="img/ava2.png" alt="">
                    <h3><%=user.getName() %></h3>
                </div>
                <div class="left_content2">
                    <div class="fix">
                        <img src="img/edit.png" alt="">
                        <a href="UpdateInformation">Sửa thông tin</a>
                    </div>
                    
                    
                </div>
            </div>
            <div id="right_content">
                <div class="geted">
                    <p>Đã Mua</p>
                </div>
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
                        <td><a href="UserBillDetail?id=<%=bill.getId()%>">Chi Tiết</a></td>
                     
                    </tr>

                
                <%} %>
                </table>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>

</body>
</html>