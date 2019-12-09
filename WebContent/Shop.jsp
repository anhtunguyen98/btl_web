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
        <link rel="stylesheet" href="./css/Shop.css">

</head>
<body>
<jsp:include page="header.jsp"/>
 <div class="content1">
        	<% 	
        	ArrayList<Product> listProduct = (ArrayList<Product>)request.getAttribute("products");
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

</body>
</html>