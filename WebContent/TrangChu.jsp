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
        <link rel="stylesheet" href="./css/Trangchu.css">

    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div id="banner">
            <div id="menu_left">
                <ul>
                    <li> <a href="#" title ="Macbook Pro">
                        <img src="./img/macbook-pro.png" alt="">  Macbook pro</a></li>
                    <li> <a href="#" title ="Macbook air">
                        <img src="./img/macbook-air.png" alt=""> Macbook air</a></li>
                    <li> <a href="#" title ="Macbook 12 inch">
                        <img src="./img/macbook-12.png" alt=""> Macbook 12 inch</a></li>
                    <li> <a href="#" title ="Macbook Pro Touch">
                        <img src="./img/macbook-pro-touchbar.png" alt=""> Macbook Pro Touch</a></li>
                    <li> <a href="#" title ="Phụ kiện">
                        <img src="./img/phu-kien.png" alt=""> Phụ kiện</a></li>
                    <li> <a href="#" title ="Balo túi sách">
                        <img src="./img/icon-cap.png" alt=""> Balo túi sách</a></li>
                    <li> <a href="#" title ="Khuyến mại">
                        <img src="./img/khuyen-mai.png" alt=""> Khuyến mại</a></li>
                    
                </ul>
                
            </div>
            <div class="movie_selection">
                <div class="mother_slide">
                    <div class="slide">
                        <ul>
                            <li class="mySlides">
                                <a href="#"><img src="./img/dbn1.jpg"></a>
                            </li>
                            <li class="mySlides">
                                <a href="#"><img src="./img/dbn2.jpg"></a>
                            </li>
                            <li class="mySlides">
                                <a href="#"><img src="./img/dbn4.jpg"></a>
                            </li>
                        </ul>
                    </div>
                    <button onclick="prev()" class="selection_lui"></button>
                    <button onclick="next()" class="selection_tien"></button>
                </div>
            </div> 

        </div>
        <div id="sanpham">
            <h2>SẢN PHẨM BÁN CHẠY</h2>
        </div>
        <div class="content1">
        	<% 	
        	ArrayList<Product> listProduct = (ArrayList<Product>)request.getAttribute("products");
        		if(listProduct==null) listProduct=ProductDAO.getAll();
        	//    ArrayList <Product> listProduct=ProductDAO.getAll(); 
        	
        		int hang=listProduct.size()/4;
        		int index=0;
        		for(int i=1;i<=hang;i++){%>
        			<div class="hang">
                    <ul>
                    <% for(int j=1;j<=4;j++){%>
                    	
                    	<% String nameProduct=listProduct.get(index).getName();
                    		String linkimg=listProduct.get(index).getImg1();
                    		int gia=listProduct.get(index).getGia();
                    		
                    		int id=listProduct.get(index).getId();
                    		index++;
                    	%>
                    	<li> 
                                <a href="DetailProduct?id=<%=id%>">
                                	
                                    <img src=<%=linkimg %> alt="">
                                    <h3><%=nameProduct %></h3>
                                    <h2><%=gia %>₫</h2>
                                </a>
<%--                                	<a href="CartProcess?command=plus&id=<%=id %>&quantity=1" class="button-add-product">Thêm Sản Phẩm</a> --%>
                            </li>
                    	
                    <% }%>
                            
                            
                    </ul>
            		</div>
        			
        		
        	<%}%>
         </div>   
           


        
        <jsp:include page="footer.jsp"/>
















        
        <!-- <div id="banner">banner</div>
        di -->
    </body>
    <script>
        var t = 0;
        document.getElementsByClassName("selection_lui")[0].style.display = "none";
        function next() {
            var temp = document.querySelectorAll(".movie_selection .slide ul li").length;
            console.log(temp);
            if (t >= temp - 1) {
                t = temp - 1;
            }
            else {
                document.querySelector(".movie_selection .slide ul").style.marginLeft = "-" + (t + 1) * 980 + "px";
            }
            t++;
            if (t == 0) {
                document.getElementsByClassName("selection_lui")[0].style.display = "none";
                document.getElementsByClassName("selection_tien")[0].style.display = "block";
            }
            else if (t == temp - 1) {
                document.getElementsByClassName("selection_lui")[0].style.display = "block";
                document.getElementsByClassName("selection_tien")[0].style.display = "none";
            }
            else {
                document.getElementsByClassName("selection_lui")[0].style.display = "block";
                document.getElementsByClassName("selection_tien")[0].style.display = "block";
            }
            console.log(t);
        }
        function prev() {
            var temp = document.querySelectorAll(".movie_selection .slide ul li").length;
            if (t >= 0) {
                document.querySelector(".movie_selection .slide ul").style.marginLeft = "-" + (t - 1) * 980 + "px";
            }
            t--;
            if (t < 0) {
                t = 0;
            }
            if (t == 0) {
                document.getElementsByClassName("selection_lui")[0].style.display = "none";
                document.getElementsByClassName("selection_tien")[0].style.display = "block";
            }
            else if (t == temp - 1) {
                document.getElementsByClassName("selection_lui")[0].style.display = "block";
                document.getElementsByClassName("selection_tien")[0].style.display = "none";
            }
            else {
                document.getElementsByClassName("selection_lui")[0].style.display = "block";
                document.getElementsByClassName("selection_tien")[0].style.display = "block";
            }
            console.log(t);
        }
    </script>
    
</html>