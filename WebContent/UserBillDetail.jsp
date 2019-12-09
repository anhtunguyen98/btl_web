<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="models.*"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/detailOrderSuccess.css">
<title>Detail Bill</title>
</head>
<% Bill bill=(Bill)request.getAttribute("bill");
	ArrayList<Item> items=(ArrayList<Item>) request.getAttribute("items");
%>
<body>
	<jsp:include page="header.jsp"/>
	<div class="content">
    <div class="detail-order-success">
        <form action="#">
            <div class="customer-details">
                <div class="row">
                    <h3 class="customer-details-item-title">BILL DETAILS</h3>
                    <div class="col-6 bill-details">
                        <div class="order-revieiw">
                            <table class="shop_table">
                                <thead>
                                <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                
                                <%for(Item item:items){ %>
                                	<tr class="cart_item">
                                    <td class="product-name">
                                        <%=item.getProduct().getName() %>&nbsp;
                                        <strong class="product-quantity">× <%=item.getQuantity() %></strong>
                                    </td>
                                    
                                    <td class="product-total">
                                <span class="woocommerce-Price-amount amount">
                                    <span class="woocommerce-Price-currencySymbol">VND</span>
                                    <%=item.getGia() %>
                                </span>
                                    </td>
                                     </tr>
                                    <%} %>
                               
                                
                                </tbody>
                                <tfoot>
                                
                                
                                <tr class="order-total">
                                    <th>Total</th>
                                    <td>
                                        <strong>
                                        <span class="woocommerce-Price-amount amount">
                                            <span class="woocommerce-Price-currencySymbol">VND</span>
                                            <%=bill.getTotal() %>
                                        </span>
                                        </strong>
                                    </td>
                                </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                    <div class="col-6 bill-information">
                        <h4>Thanks for trusting us</h4>
                        <ul>
                            <li>
                                <label>Order id: </label>
                                <span><%=bill.getId() %></span>
                            </li>
                            <li>
                                <label>Name: </label>
                                <span><%=bill.getFistname()+" "+bill.getLastname() %></span>
                            </li>
                            <li>
                                <label>Detail address: </label>
                                <span><%=bill.getStreet_address() %></span>
                            </li>
                            <li>
                                <label>Town/City:</label>
                                <span><%=bill.getCity() %></span>
                            </li>
                            <li>
                                <label>Phone: </label>
                                <span><%=bill.getPhone() %></span>
                            </li>
                        </ul>
                    </div>
                </div>

            </div>
            
            <div class="checkout-payment">
                <a href="Account" class="button-payment" name="woocommerce_checkout_place_order"
                        id="place_order" value="Place order" data-value="Place order">Back main page</a>
            </div>
        </form>
    </div>
</div>
 <jsp:include page="footer.jsp"/>

</body>
</html>