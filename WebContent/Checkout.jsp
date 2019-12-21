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
        
        <link rel="stylesheet" href="./css/Checkout.css">
        <title>Checkout</title>

    </head>
    <body>
    
        <jsp:include page="header.jsp"/>
       <%Cart cart=(Cart)session.getAttribute("cart");
			ArrayList<Item> list=cart.getList();       	
       	%>
 
        <div class="content">
            <div class="checkout">
                <form action="Checkout" method="post">
                    <div class="customer-details">
                        <div class="row">
                            <div class="col-6 bill-details">
                                <h3 class="customer-details-item-title">BILLING DETAILS</h3>
                                <p class="form-row-narrow col-6">
                                    <label class="form-row-title">First name*</label>
                                    <input type="text" class="first-name" name="first-name" id="fistname" required>
                                </p>
                                <p class="form-row-narrow col-6">
                                    <label class="form-row-title last-name-title">Last name*</label>
                                    <input type="text" class="last-name" name="last-name" id="lastname" required>
                                </p>
                                <p class="form-row-wide">
                                    <label class="form-row-title">Street address*</label>
                                    <input type="text" class="street-address" name="street-address" id="street"required>
                                </p>
                                <p class="form-row-wide">
                                    <label class="form-row-title">Town/City*</label>
                                    <input type="text" class="town-city" name="city" id="city" required>
                                </p>
                                <p class="form-row-wide">
                                    <label class="form-row-title">Phone*</label>
                                    <input type="text" class="phone" name="phone" id="phone" required>
                                </p>
                            </div>
                            <div class="col-6 add-information">
                                <h3 class="customer-details-item-title">ADDITIONAL INFORMATION</h3>
                                <p class="form-row-wide">
                                    <label class="form-row-title">Order notes(optional)</label>
                                    <textarea name="note" id="" cols="5" rows="2"
                                              placeholder="Notes about your holder, e.g. special notes for delivery"></textarea>
                                </p>
                            </div>
                        </div>
    
                    </div>
                    <h3 class="order-review-heading">YOUR ORDER</h3>
                    <div class="order-review">
                        <table class="shop_table">
                            <thead>
                                <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            <%int tongcong=0;
                            for(Item item:list){
                            	tongcong+=item.getGia();
                            	
                            	%>
                          
                            <tr class="cart_item">
                                <td class="product-name">
                                    <%=item.getProduct().getName() %>&nbsp;
                                    <strong class="product-quantity">x<%=item.getQuantity() %></strong>
                                </td>
                                <td class="product-total">
                                    <span class="woocommerce-Price-amount amount">
                                        <span class="woocommerce-Price-currencySymbol"></span>
                                        <%=item.getGia() %>Đ
                                    </span>
                                </td>
                            </tr>
                           <% }%>
                            </tbody>
                            <tfoot>
                              
                                <tr class="order-total">
                                    <th>Total</th>
                                    <td>
                                        <strong>
                                            <span class="woocommerce-Price-amount amount">
                                                <span class="woocommerce-Price-currencySymbol"></span>
                                                <%=tongcong %> Đ
                                            </span>
                                        </strong>
                                    </td>
                                </tr>
                            </tfoot>
                        </table>
                    </div>
                    <div class="checkout-payment">
                        <p>Your personal data will be used to process your order,
                            support your experience throughout this website, and for other purposes described in our
                           
                        </p>
                        <button type="submit" class="button-payment" name="woocommerce_checkout_place_order"
                                id="place_order" value="Place order" data-value="Place order" onclick="myFunction()">Place order</button>
                    </div>
                </form>
            </div>
        </div>
         <jsp:include page="footer.jsp"/>
    </body>
	<script>
        function myFunction() {9
        	let fistname = document.getElementById('fistname').value;
        	let lastname = document.getElementById('lastname').value;
        	let street = document.getElementById('street').value;
        	let city = document.getElementById('city').value;
        	let phone = document.getElementById('phone').value;
        	if(fistname!=""&&lastname!=""&&street!=""&&city!=""&&phone!=""){
        		alert("Thành công");
        	}
        	else{
        		alert("Vui lòng điền đầy đủ thông tin");	
        	}
            
        }
    </script>
</html>
