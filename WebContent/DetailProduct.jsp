<%@page import="models.DAO.ProductDAO"%>
<%@page import="models.Product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link rel="stylesheet" href="./css/DetailProduct.css">

        <script src="./js/detailProduct.js"></script>
        <title>Detail Product</title>

    </head>
    <body>
        <jsp:include page="header.jsp"/>
		 <%Product product=(Product)request.getAttribute("product");
		 	int id=product.getId();
		 %>
        <div class="content">
            <div class="images">
                <div class="big-image">
                    <img src=<%=product.getImg1() %> alt="">
                </div>
                <div class ="small-images">
                    <img src=<%=product.getImg1() %> alt="">
                    <img src=<%=product.getImg2() %> alt="">
                    <img src=<%=product.getImg3() %> alt="">
                    <img src=<%=product.getImg4() %> alt="">
                </div>

            </div>
           
            <div class="text-content">
               <h1><%=product.getName() %>
                </h1>
                <h2><%=product.getGia() %> Đ</h2>
                <h3> *Phụ Kiện:<%=product.getPhukien() %><br>
                    *Bảo Hành:<%=product.getBaohanh() %><br>
                    *Thông số tóm tắt:</h3>
                <p>
                   <%=product.getThongtin() %><br>
                </p>
                <form method="post" action="CartProcess" >
                <div class="quantity">
                    <label for="">Quantity</label>
<!--                     <span><i class='fas fa-caret-left' onclick="reduction()"></i></span> -->
                    <input type="number" value="1" min="1" max="999" id="quantity" name="quantity">
<!--                     <span><i class='fas fa-caret-right' onclick="increase()"></i></span> -->
                </div>
                <input type="hidden" value="plus" name="command">
                <input type="hidden" value="<%=id %>" id="id" name="id">
                <input type="submit" value="ThÊM VÀO GIỎ"  class="bt-add-to-cart">
<%--                 <a href="CartProcess?command=plus&id=<%=id %>&quantity=<% %>" class="bt-add-to-cart">ThÊM VÀO GIỎ</a> --%>

            	</div>
            	</form>

        </div>
        <jsp:include page="footer.jsp"/>
    </body>
    
    

</html>