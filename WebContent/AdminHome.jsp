<%@page import="models.UserAdmin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Home</title>
    <style>
        button{
            width: 4cm;
            height: 2cm;
            text-align: center;
            font-style: oblique ;
            font-size: 20px;

        }
    </style>
</head>
<body>
<%UserAdmin admin=(UserAdmin)session.getAttribute("admin");
if(admin==null){
	response.sendRedirect("/BaiTapLon/LoginAdmin");
	return;
}
%>
<button onclick="quit()">Logout</button>
<div style="width: 100%; text-align: center; font-size: 100px; padding-top: 60px;">Staff Home</div>

<div style="width: 100%;text-align: center;height: 500px">
    
    <form action="ViewProduct" method="post">
        <button>View Product</button>
    </form>
    <form action="ViewBill" method="post">
        <button>View Bill</button>
    </form>
</div>


</body>
<script >function quit() {
        location.href="LoginAdmin";
        
    }</script>
</html>
