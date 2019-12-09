<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@page import="models.*"%>
<%@page import="java.util.*"%>

    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <script src="js/cart.js"></script>
        <link rel="stylesheet" href="./css/Cart.css">
        <title>Cart</title>

    </head>
    <body>
    	<%	
    		
	    	Cart cart=(Cart)session.getAttribute("cart");
	    	ArrayList<Item> list=cart.getList();
	    	System.out.print(list.size());
	    
    	%>
    	
        <jsp:include page="header.jsp"/>
        <div class="content">
            <div class="sanpham">
                <div class="title">
                    <div class="name-sampham"> Sản Phẩm</div>
                    <div class="gia"> Giá</div>
                    <div class="soluong"> Số Lượng</div>
                    <div class="tongcong"> Tổng Cộng</div>
                </div>
                
                <%int tongtien=0;
                for (Item p:list) {
                	
                	tongtien+=p.getGia();
                %>
                	<div class="sanpham-detail">
                    <div class="name-sampham">
                    <a href="CartProcess?command=remove&id=<%=p.getProduct().getId()%>"><img alt="" src="./img/delete_icon.png"></a>
                    
                        <img src=<%=p.getProduct().getImg1() %> alt="">
                        <h5><%=p.getProduct().getName() %></h5> 
                        
                    </div>
                    <div class="gia"><%=p.getProduct().getGia() %></div>
                    <div class="soluong">
                   		
                       <%=p.getQuantity() %>
                    </div>
                    <div class="tongcong"> <%=p.getGia() %> Đ</div>
                </div>
                <%}%>
                
                
               <a href="Shop" class="button"> TIẾP TỤC MUA</a>
                
            </div>
            <div class="cart-total">
                <h3> Cart Total</h3>
                <h4>Tổng Cộng
                    <div class="total"><%=tongtien %> Đ</div>
                </h4>
                
                <a href="Checkout" class="button"> PROCEED TO CHECKOUT</a>

            </div>

        </div>

        <jsp:include page="footer.jsp"/>
    </body>
</html>