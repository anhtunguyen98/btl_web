<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Tin tức</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div id="News">
		<div id="title">Introduce - Mobile Store</div>
		<div id="News1">
			<div class="NewsA">
				<a href="#" class="NewsAA">▶ Công ty TNHH Moblie Store - Chuyên cung cấp các dòng máy nhập USA, Japan</a><br>
				<br><div >Công ty TNHH Moblie Store là một trong những đơn vị tiên phong tại Hà Nội hoạt động trong lĩnh vực kinh doanh các dòng sản phẩm laptop cũ. Thành lập từ năm 2010 đến nay, Moblie Store đã tạo dựng được chỗ đứng vững chắc trên thị trường và trở thành cái tên quen thuộc đối với khách hàng.</div>
				<br><div>Sau gần 10 năm thành lập, Moblie Store luôn nỗ lực hết mình để đem đến dịch vụ và giải pháp công nghệ chuyên nghiệp, với tâm niệm mỗi khách hàng khi tìm kiếm đến chúng tôi không chỉ trải nghiệm dịch vụ mua bán thông thường mà sẽ cảm nhận thấy sự khác biệt - tin cậy, an tâm đến từ chất lượng sản phẩm, chế độ hậu mãi. Moblie Store cam kết các sản phẩm luôn đảm bảo chất lượng cao và nguồn gốc rõ ràng, giá cạnh tranh trên thị trường, nhiều ưu đãi hấp dẫn, bảo hành uy tín với chế độ hậu mãi tốt nhất</div>
				<br><div>Quy tụ đội ngũ nhân viên trẻ tuổi, có chuyên môn, nhiệt huyết, tận tụy với khách hàng, khi tìm đến Moblie Store các bạn sẽ cảm thấy hài lòng khi tiếp xúc trực tiếp tại cửa hàng hoặc qua điện thoại, nhân viên tư vấn của chúng tôi sẽ hướng dẫn và cung cấp cho khách hàng những thông tin hữu ích nhất với sự nhiệt thành và thân thiện. Đi theo phương châm “Kiến tạo chất lượng - Kết nối sẻ chia”, chúng tôi luôn lắng nghe và quan tâm tới nhu cầu của khách hàng, đồng thời không ngừng nâng cao chất lượng dịch vụ mỗi ngày.</div>

			</div>
			<div class="NewsA" style="margin-top: 240px">
				<a href="#" class="NewsAA">▶ CÁC DỊCH VỤ CUNG CẤP</a>
				<div >Hiện nay, hệ thống cửa hàng Moblie Store đã phát triển vững mạnh tại Hà Nộ và tập trung các dịch vụ chính sau:</div>
				<div>●  Phân phối và bán các sản phẩm laptop cũ, đặc biệt là các sản phẩm dòng Pro Business và Mobile Workstation được nhập khẩu trực tiếp từ Châu Âu, Mỹ</div>
				<div>●  Dịch vụ cài đặt phần mềm, bảo dưỡng, vệ sinh máy định kỳ</div>
				<div>●  Dịch vụ sửa chữa, thay thế linh kiện</div>
				<div>●  Dịch vụ nâng cấp cấu hình máy cũ</div>
				<div>●  Dịch vụ nâng cấp, đổi máy cũ lấy máy mới hơn</div>
			</div>
			<div class="NewsA" style="margin-top: 150px">
				<div><a href="#" class="NewsAA">▶ CHÍNH SÁCH</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách mua hàng từ xa</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách đặt cọc giữ máy</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách đặt hàng</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách giao nhận - đổi trả</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách bảo hành</a></div>
				<div><a href="#" class="NewsAC">●  Chính sách bảo mật thông tin</a></div>
			</div>
			<div class="NewsA" style="margin-top: 150px">
				<div><a href="#" class="NewsAA">▶ Thanh Toán</a></div>
				<div><a href="#" class="NewsAC">●  Thanh toán trực tuyến (Internet Banking)</a></div>
				<div><a href="#" class="NewsAC">●  Chuyển khoản (Ngân hàng, ATM)</a></div>
			</div>
			
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<style type="text/css">
	#News{
		margin-right:10%;
		margin-left:10%;
		text-align: center;
		margin-top: 100px;
		margin-bottom:100px;
		position: relative;
	}
	#News #title{
		color: blue;
		text-align: center;
		font-size: 30px;
		margin-bottom: 40px;
	}
	#News #News1{
		color: black;
		margin-left: 40px;
		text-align: left;
		
	}
	#News #News1 .NewsA{
		margin-top: 90px;
		height:30px;
		
	}
	#News #News1 .NewsA .NewsAA{
		font-size: 20px;
		font-weight: bold;
		text-decoration: none;
		
	}
	#News #News1 .NewsA .NewsAB{
		font-size: 17px;
		coler: #27b954;
	}
	#News #News1 .NewsA .NewsAC{
		text-decoration: none;
	}
</style>
</html>