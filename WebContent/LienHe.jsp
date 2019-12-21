<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Liên Hệ</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="contact">
		<div id="title">Contact Us - Mobile Store</div>
		<div id="wrap-content">
			<div class="content">
				<div class="content-1">Tên doanh nghiệp</div>
				<div class="content-2">Công ty TNHH Mobile Store</div>
			</div>
			<div class="content">
				<div class="content-1">Địa chỉ</div>
				<div class="content-2">136 Hoàng Cầu, Q.Đống Đa, Hà Nội</div>
			</div>
			<div class="content">
				<div class="content-1">Chi nhánh</div>
				<div class="content-2">Số 142 ngõ 39 Nguyễn Ngọc Vũ, Q.Cầu Giấy, Hà Nội</div>
			</div>
			<div class="content">
				<div class="content-1">Email</div>
				<div class="content-2" id="email">mobilestore@d16ptit.com.vn</div>
			</div>
			<div class="content">
				<div class="content-1">Hotline</div>
				<div class="content-2" id="phone">0987654321</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<style type="text/css">
	#contact{
		margin-top: 100px;
		position: relative;
		margin-bottom: 400px;
	}
	#contact #title{
		color: blue;
		text-align: center;
		font-size: 30px;
		margin-bottom: 40px;
	}
	#contact #wrap-content{
		position: absolute;
		padding-left: 30%;
	}
	#contact #wrap-content .content{
		margin-top: 10px;
		height: 30px;
	}
	#contact #wrap-content .content .content-1{
		width: 250px;
		float: left;
		font-size: 20px;
		color: black;
		font-weight: bold;
	}
	#contact #wrap-content .content .content-2{
		width: 500px;
		float: left;
		font-size: 16px;
	}
	#contact #wrap-content .content #email{
		text-decoration: underline;
	}
	#contact #wrap-content .content #phone{
		color: red;
	}
</style>
</html>