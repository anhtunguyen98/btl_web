<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tin Tức</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="wrap-news">
		<div id="title">Các trang Web thương mại điện tử lớn tại Việt Nam</div>
		<div id="wrap-content">
			<div class="app">
				<img alt="shopee" src="./img/shopee.jpg">
				<a href="https://shopee.vn/">Shopee là nền tảng thương mại điện tử hàng đầu Đông Nam Á</a>
			</div>
			<div class="app">
				<img alt="lazada" src="./img/lazada.png">
				<a href="https://www.lazada.vn/">Lazada - Kênh mua sắm trực tuyến hàng đầu Việt Nam</a>
			</div>
			<div class="app">
				<img alt="tiki" src="./img/tiki.png">
				<a href="https://tiki.vn/">Tiki - Kênh mua sắm trực tuyến của người Việt</a>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<style type="text/css">
	#wrap-news{
		margin-top: 30px;
	}
	#wrap-news #title{
		text-align: center;
		font-size: 30px;
		font-weight: bold;
	}
	#wrap-news #wrap-content{
		margin-top: 30px;
		padding-left: 33%;
		
	}
	#wrap-news #wrap-content .app{
		margin-bottom: 30px;
		width: 500px;
		height: 100px;
	}
	#wrap-news #wrap-content .app img{
		width: 100%;
		height: 85px;
	}
	#wrap-news #wrap-content .app a{
		text-decoration: none;
		color: blue;
	}
	#wrap-news #wrap-content .app a:hover{
		color: red;
		custom: pointer;
	}
	
</style>
</html>