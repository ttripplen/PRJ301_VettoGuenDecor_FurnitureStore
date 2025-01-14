<%-- 
    Document   : invoice
    Created on : Mar 20, 2024, 3:14:34 AM
    Author     : ADMIN
--%>

<%@page import="model.OrderDetails"%>
<%@page import="model.Order"%>
<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Your invoice for VettoGuen's Décor purchase</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <link rel="stylesheet" href="./css/invoice.css">

    </head>

    <body>
        <%
            Users loginUser = (Users) session.getAttribute("LOGIN_USER");
            if (loginUser == null || !loginUser.getRole().getId().equals("US")) {
                response.sendRedirect("login.jsp");
                return;
            }
            Order order = (Order) request.getAttribute("ORDER");
            if (order == null) {
                response.sendRedirect("login.jsp");
                return;
            }
        %>
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td class="container" align="center">


                    <table class="table" align="center" cellpadding="0" cellspacing="0">

                        <tr>
                            <td class="invoice" align="center">

                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="thanks" align="center">
                                            <img src="./image/invoice/iconcheckmark.png"><br>
                                            <h2>
                                                Thank You For Your Order!
                                            </h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="thanks-note" align="center">
                                            <p>
                                                Your support is a great motivation for us to continuously improve and serve you better.
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                                <tr class="invoice-line">
                                                    <td class="label1" bgcolor="#F4CFC6">
                                                        Invoice
                                                    </td>
                                                    <td class="content-line1" bgcolor="#F4CFC6" align="right">
                                                        #<%=order.getId()%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label1">
                                                        Order Date
                                                    </td>
                                                    <td class="content-line1" align="right">
                                                        <%=order.getCreatedAt().toLocalDate()%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label1">
                                                        Customer
                                                    </td>
                                                    <td class="content-line1" align="right">
                                                        <%=order.getFullName()%>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label1" style="border-bottom: 2px solid #eeeeee;">
                                                        Payment methods
                                                    </td>
                                                    <td class="content-line1" align="right" style="border-bottom: 2px solid #eeeeee;">
                                                        COD
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                                <%
                                                    for (OrderDetails orderDetail : order.getOrderDetails()) {
                                                %>
                                                <tr class="listItem">
                                                    <td class="label-name" align="left" width="40%">
                                                        <span><%=orderDetail.getProduct().getName()%></span>
                                                    </td>
                                                    <td class="quantity" align="left" style="width: 10%;">
                                                        <span><%=orderDetail.getQuantity()%></span>
                                                    </td>
                                                    <td class="price" align="center" style="width: 15%;">
                                                        <span>$<%=orderDetail.getPrice()%></span>
                                                    </td>
                                                    <td class="total-cost" align="right" style="width: 35%;">
                                                        $<%=orderDetail.getQuantity() * orderDetail.getPrice()%>
                                                    </td>
                                                </tr>
                                                <%
                                                    }
                                                %>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="line-items" align="left">
                                            <table cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <td class="label2" style="border-top: 2px solid #eeeeee;">
                                                        Shipping
                                                    </td>
                                                    <td class="content-line2" align="right" style="border-top: 2px solid #eeeeee;">
                                                        $0
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="label2">
                                                        Tax (~7%)
                                                    </td>
                                                    <td class="content-line2" align="right">
                                                        $<%=Math.round(order.getTotalPriceAfterTax()) - Math.round(order.getTotalPriceBeforeTax())%>
                                                    </td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="total">
                                            <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                                <tr>
                                                    <td class="label-total">
                                                        TOTAL
                                                    </td>
                                                    <td class="content-total" align="right">
                                                        $<%=Math.round(order.getTotalPriceAfterTax())%>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="row1" align="center" valign="top">

                                <table class="full-table" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="center" valign="top" style="font-size:0;">

                                            <div class="mw-50">

                                                <table class="table1" align="left" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align=" left" valign="top">
                                                            <p style="font-weight: 800; ">Delivery Address</p>
                                                            <p><%=order.getAddress()%><br><%=order.getCity()%>, <%=order.getCountry()%></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="mw-50 ">
                                                <table class="table2" align="left " cellpadding="0 " cellspacing="0 ">
                                                    <tr>
                                                        <td align="right " valign="top">
                                                            <p style="font-weight: 800; ">Estimated Delivery Date</p>
                                                            <p><%=order.getEstimatedDeliveryDate()%></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td class="row1" align="center" valign="top">

                                <table class="full-table" align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td align="center" valign="top" style="font-size:0;">

                                            <div class="mw-50">

                                                <table class="table1" align="left" cellpadding="0" cellspacing="0">
                                                    <tr>
                                                        <td align=" left" valign="top">
                                                            <p style="font-weight: 800; ">Supplier</p>
                                                            <p>Tran Nguyen Nhu Nguyen<br>13/1 20 street,<br>Hiep Binh Chanh, Thu Duc</p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                            <div class="mw-50 ">
                                                <table class="table2" align="left " cellpadding="0 " cellspacing="0 ">
                                                    <tr>
                                                        <td align="right " valign="top">
                                                            <p style="font-weight: 800; ">Order Note</p>
                                                            <p><%=order.getNote()%></p>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>

                        <tr>
                            <td class="notification" align="center ">

                                <table class="table-note" align="center " cellpadding="0 " cellspacing="0 ">
                                    <tr>
                                        <td class="note-content" align="center ">
                                            <h2>
                                                WOULD YOU LIKE TO CONTINUE SHOPPING?
                                            </h2>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="button-sale" align="center ">
                                            <table cellspacing="0 " cellpadding="0 ">
                                                <tr>
                                                    <td align="center ">
                                                        <button><a href="MainController?action=Search&search=" target="_blank ">Start Shopping</a></button>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                        <tr>
                            <td class="footer" align="center">

                                <table align="center" cellpadding="0" cellspacing="0">
                                    <tr>
                                        <td class="name" align="center">
                                            <h3>VettoGuen's Décor</h3>
                                            <img src="./image/session/houselogodonee.png">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="address" align="center">
                                            <p>
                                                13/1 20 street<br> Hiep Binh Chanh, Thu Duc
                                            </p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="email" align="center">
                                            <p>
                                                If you have any questions, please contact me via this
                                                <a href="mailto:tnnn0320@gmail.com" target="_blank" style="color: #DB7F67;">email</a>.
                                            </p>
                                            <span>&copy; 2024 VettoGuen's Décor. All rights reserved.</span>
                                        </td>
                                    </tr>
                                </table>

                            </td>
                        </tr>
                    </table>

                </td>
            </tr>
        </table>

    </body>

</html>
