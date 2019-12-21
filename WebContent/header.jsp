<%@page import="models.DAO.ProductDAO"%>
<%@page import="models.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% User user=(User)session.getAttribute("user");
%>
<%Cart cart=(Cart)session.getAttribute("cart");
	if(cart==null){
		cart=new Cart();
		session.setAttribute("cart", cart);
	}
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <link rel="stylesheet" href="./css/header.css">

    </head>
<body>
	<div id="header">
            <div id="logo"> <img src="./img/logo.png" alt=""></div>

            <div id="menu_top">
                <ul>
                    <li><a href="TrangChu" title="Trang chủ"> Trang chủ </a></li>
                    <li><a href="GioiThieu.jsp" title="Giới thiệu"> Giới thiệu </a></li>
                    <li><a href="Shop" title="Cửa hàng"> Cửa hàng </a></li>
                    <li><a href="TinTuc.jsp" title="Tin tức"> Tin tức </a></li>
                    <li><a href="LienHe.jsp" title="Liên hệ"> Liên hệ </a></li>
                </ul>
            </div>
            <div id="search_form">
                    <input type="text" placeholder=" Tìm kiếm sản phẩm">
                    <button>Search</button>

            </div>
            	<% if(user==null){
            		%>
            		<a href="Login" class="dangnhap">Đăng Nhập</a>
                <a href="Signup" class="dangnhap">Đăng Kí</a>
            	<% }else{
            	%>
             	<a href="Account" class="profile"> <img src="./img/ava.png" alt=""></a>
                <a href="Login" class="dangnhap">Đăng Xuất</a> 
             	
             	<% }%>
             	<a href="CartProcess" class="cart"> <img src="./img/cart.png" alt=""></a>
                

            
        </div>
</body>
</html>