<%-- 
    Document   : orderManagement
    Created on : Mar 22, 2024, 2:04:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>VettoGuen's dashboard</title>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="./css/orderManagement.css">
</head>

<body>
    <div class="sidebar">
        <div class="logo">
            <ul class="menu">
                <li>
                    <a href="#">
                        <i class='bx bxs-dashboard' style="font-size: 22px;"></i>
                        <span>Dashboard</span>
                    </a>
                </li>
                <li class="active">
                    <a href="#">
                        <i class='bx bx-cart' style="font-size: 22px;"></i>
                        <span>Order</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-envelope' style="font-size: 22px;"></i>
                        <span>Email</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-user-circle' style="font-size: 22px;"></i>
                        <span>Users</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-cog' style="font-size: 22px;"></i>
                        <span>Setting</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bx-message-rounded-dots' style="font-size: 22px;"></i>
                        <span>Messenger</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class='bx bxs-spreadsheet' style="font-size: 22px;"></i>
                        <span class="links_name">Timesheet</span>
                    </a>
                </li>

                <li>
                    <a href="/LoginPage/index.html">
                        <i class='bx bx-log-out' style="font-size: 22px;"></i>
                        <span>Logout</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-content">
        <div class="header-wrapper">
            <div class="header-title">
                <span>Primary</span>
                <h2>User Management</h2>
            </div>
            <div class="user-info">
                <div class="search-box">
                    <input type="text" name="search">
                    <input type="submit" name="action" value="Search">
                </div>
                <img src="./image/avt/avt-1.png ">
            </div>
        </div>
        <div class="card-container ">
            <h2 class="main-title ">Today's data</h2>
            <div class="card-wrapper ">
                <div class="payment-card light-brown ">
                    <div class="card-header ">
                        <div class="amount ">
                            <span class="title1 ">
                                Sales revenue
                            </span>
                            <span class="amount-value1 ">$10.000</span>
                        </div>
                        <i class='bx bx-dollar icon1 circle-box'></i>
                    </div>
                    <span class="card-detail1 ">**** **** **** 2003</span>
                </div>

                <div class="payment-card light-green ">
                    <div class="card-header ">
                        <div class="amount ">
                            <span class="title ">
                                Online traffic 
                            </span>
                            <span class="amount-value ">500</span>
                        </div>
                        <i class='bx bx-group circle-box icon3'></i>
                    </div>
                    <span class="card-detail ">**** **** **** 2003</span>
                </div>
                <div class="payment-card light-pink ">
                    <div class="card-header ">
                        <div class="amount ">
                            <span class="title1 " sty>
                                Number of completed orders
                            </span>
                            <span class="amount-value1 ">50</span>
                        </div>
                        <i class='bx bx-check circle-box icon4'></i>
                    </div>
                    <span class="card-detail1 ">**** **** **** 2003</span>
                </div>
                <div class="payment-card light-yellow ">
                    <div class="card-header ">
                        <div class="amount ">
                            <span class="title ">
                                Operating expenses 
                            </span>
                            <span class="amount-value ">$2.000</span>
                        </div>
                        <i class='bx bx-list-ul circle-box icon2'></i>
                    </div>
                    <span class="card-detail ">**** **** **** 2003</span>
                </div>
            </div>
        </div>
        <div class="tabular-wrapper ">
            <h2 class="main-title ">User Information</h2>
            <div class="table-container ">
                <table>
                    <thead>
                        <tr>
                            <th style="padding-left: 20px;">ID</th>
                            <th>Date</th>
                            <th>Full Name</th>
                            <th>Phone Number</th>
                            <th>Address</th>
                            <th>Note</th>
                            <th>Total</th>
                        </tr>

                        <tbody>
                            <tr style="height: 50px;">
                                <td class="Id">1</td>
                                <td>22/03/2024</td>
                                <td>Pham Khanh</td>
                                <td>0919657111</td>
                                <td>40 Le Van Sy, Quan 3, TP.Ho Chi Minh</td>
                                <td>Ok</td>
                                <td>963</td>
                            </tr>
                            <tr style="height: 50px;">
                                <td class="Id">2</td>
                                <td>22/03/2024</td>
                                <td>Ho Gia Kim Hien</td>
                                <td>0866671279</td>
                                <td>20 Pham Van Đong, Thu Đuc, TP.Ho Chi Minh</td>
                                <td>Safe delivery, thanks!</td>
                                <td>642</td>
                            </tr>
                            <tr style="height: 50px;">
                                <td class="Id">3</td>
                                <td>22/03/2024</td>
                                <td>Ha Thao Nguyen</td>
                                <td>0863182971</td>
                                <td>11 Ngo Tat To, Binh Thanh, TP.Ho Chi Minh</td>
                                <td>Hi</td>
                                <td>535</td>
                            </tr>
                            <tr style="height: 50px;">
                                <td class="Id">4</td>
                                <td>22/03/2024</td>
                                <td>Vo Nhu Y</td>
                                <td>0903191871</td>
                                <td>10 Phan Dinh Phung, Quan 3, TP.Ho Chi Minh</td>
                                <td>None</td>
                                <td>321</td>
                            </tr>
                            <tr style="height: 50px;">
                                <td class="Id">5</td>
                                <td>22/03/2024</td>
                                <td>Le Nguyen</td>
                                <td>0911654321</td>
                                <td>16 Phan Van Tri, Go Vap, TP.Ho Chi Minh</td>
                                <td>None</td>
                                <td>428</td>
                            </tr>
                            <tr style="height: 50px;">
                                <td class="Id">6</td>
                                <td>22/03/2024</td>
                                <td>Vo Duy Thinh</td>
                                <td>0866151671</td>
                                <td>30 Le Van Viet, Thu Duc, TP.Ho Chi Minh</td>
                                <td>Safe delivery, thanks!</td>
                                <td>428</td>
                            </tr>
                             <tr style="height: 50px;">
                                <td class="Id">7</td>
                                <td>22/03/2024</td>
                                <td>Tran Nguyen Phuong Ngan</td>
                                <td>0868727419</td>
                                <td>71 Vo Van Ngan, Thu Duc, TP.Ho Chi Minh</td>
                                <td>Safe delivery, thanks!</td>
                                <td>856</td>
                            </tr>
                             <tr style="height: 50px;">
                                <td class="Id">8</td>
                                <td>22/03/2024</td>
                                <td>Nguyen Thi Hung</td>
                                <td>0866070271</td>
                                <td>72 duong 20, Hiep Binh Chanh, Thu Duc, TP.Ho Chi Minh</td>
                                <td>Hi</td>
                                <td>963</td>
                            </tr>

                        </tbody>
                </table>
            </div>
        </div>
    </div>

</body>

</html>
