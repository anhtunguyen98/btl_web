<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<div style="width: 100%; text-align: center; font-size: 100px; padding-top: 60px;">WELCOME TO LAPTOP STORE</div>
<div style="width: 100%;text-align: center;font-size: 30px">This page for staff only</div>
<div style="margin-left: 42%; margin-top: 10%;">
    <form action="LoginAdmin" method="post">
        <input style="width: 25%; min-height: 30px;" type="text" name="username" placeholder="username..."><br><br>
        <input style="width: 25%; min-height: 30px;" type="password" name="password" placeholder="password..."><br><br>
        <button type="submit" style="margin-left: 6%; min-width: 10%; min-height: 3%;" >Login</button>
        <%if(session.getAttribute("messad")!=null){%>
            <div style="width: 28%;font-size: 20px;color:red"><%=session.getAttribute("messad") %></div>				
        <%} %>
        
    </form>
    
    
    <label style="margin-left: 4vh" id="authentication-message">
       
    </label>
</div>
</body>
</html>