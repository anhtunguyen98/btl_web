<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/Signup.css">
    <title>Signup</title>

</head>
<body>
	<jsp:include page="header.jsp"/>
   <form action="Signup" method="post" onsubmit="return myFunction()">
	<div class="content">
        <div class="update-information">
            <h1 class="a-title">SIGN UP</h1>
            <div class="box-update-information">
            	<div class="col-6">
            		<label for="">UserName</label>
                    <input id="user" type="text" name="user">
            	
            	</div>
            	<div class="col-6">
            		<label for="">PassWord</label>
                    <input id="pass" type="password" name="pass">
            	
            	</div>
                <div class="col-6">
                    <label for="">Họ và tên:</label>
                    <input id="name" type="text" name="name">
                </div>
                <div class="col-6">
                    <label for="">Email:</label>
                    <input id="email" type="text" name="email"  >
                </div>
                <div class="col-6">
                    <label for="">SDT:</label>
                    <input id="tel" type="text" name="tel" >
                </div>
                
          			<%String notice; %>
                <%if(session.getAttribute("useraxis")!=null){
                	notice=(String)session.getAttribute("useraxis");
            		
           		 }else notice="thành công"; %>
                <div class="actions">
                	 <button  class="button" type="submit">ĐĂNG KÝ</button>
                    
                    <a href="TrangChu" class="button cancel">HỦY</a>
                </div>
                	
           		 <input id="notice" type="hidden" name="notice" value="<%=notice %>" >
            </div>
        </div>
    </div>
    </form>
    <jsp:include page="footer.jsp"/>
    <script>
        function myFunction() {
            let username = document.getElementById('user').value;
            let password = document.getElementById('pass').value;
            let email = document.getElementById('email').value;
            let tel = document.getElementById('tel').value;
            let at = email.indexOf("@");
            let com= email.indexOf(".com");
			let notice=document.getElementById('notice').value;
            let dk1 = password.indexOf("@");
            let dk2 = password.indexOf("#");
            let dk3 = password.indexOf("*");
            let dk4 = password.indexOf("&");
            let dk5 = password.indexOf("!");
            if(username !="" && password!="" && email!="" && tel!=""){
                if(at!=-1 && com!=-1){
                    if(dk1!=-1 || dk2!=-1 || dk3!=-1 || dk4!=-1 || dk5!=-1){
                        alert(notice);
                    }
                    else {
                    	alert("Pass phải có tối thiểu 1 trong các kí tự: @, #, *, &, !.");
                    	return false;
                    }
                }
                else {
                    alert('Email phải đúng định dạng có chứa @ và .com.');
                    return false;
                }
            }
            else{
                alert("Vui lòng điền đầy đủ thông tin");
                return false;
            }
        }
    </script>
</body>
</html>