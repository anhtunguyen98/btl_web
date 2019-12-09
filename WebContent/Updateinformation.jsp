<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="models.*"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/updateInformation.css">
    <title>Update Information</title>
</head>
<% User user=(User)session.getAttribute("user");
%>
<body>
         <jsp:include page="header.jsp"/>
    <div class="content">
        <div class="update-information">
            <h1 class="a-title">THÔNG TIN TÀI KHOẢN</h1>
            <div class="box-update-information">
            <form action="UpdateInformation" method="post">
                <div class="col-6">
                    <label for="">Họ và tên:</label>
                    <input type="text" value="<%=user.getName() %>" name="name">
                </div>
                <div class="col-6">
                    <label for="">Email:</label>
                    <input type="text" value="<%=user.getEmail() %>" name="email"  >
                </div>
                <div class="col-6">
                    <label for="">SDT:</label>
                    <input type="text" value="<%=user.getTel() %>" name="phone" >
                </div>
                
           
                <div class="actions">
                    <input type="submit" value="LƯU THAY ĐỔI" class="button">
                    <a href="Account" class="button cancel">HỦY</a>
                </div>
                </form>
            </div>
        </div>
    </div>
     <jsp:include page="footer.jsp"/>
    
</body>
</html>