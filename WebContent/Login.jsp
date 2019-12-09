<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="./css/Login.css">
        <title>Login</title>

    </head>
    <body>
       <jsp:include page="header.jsp"/>
        <form action="Login" method="post" onsubmit="return myFunction()">
            <div class="content">
                <div class="update-information">
                    <h1 class="a-title">Login</h1>
                    <div class="box-update-information">
                        <div class="col-6">
                            <label for="">UserName</label>
                            <input id="user" type="text" name="username">
                        
                        </div>
                        <div class="col-6">
                            <label for="">PassWord</label>
                            <input id="pass" type="password" name="pass">
                        
                        </div>
                        
                        
                  
                        <div class="actions">
                             <button  class="button" type="submit">ĐĂNG NHẬP</button>
                            
                            <a href="TrangChu" class="button cancel">HỦY</a>
                            <%if(session.getAttribute("mess")!=null){%>
            				<div><%=session.getAttribute("mess") %></div>
           					 <%} %>	
                        </div>
                       	
                       	
                        
                    </div>
                </div>
            </div>
        
            </form>
            
          
        <jsp:include page="footer.jsp"/>
    </body>
</html>