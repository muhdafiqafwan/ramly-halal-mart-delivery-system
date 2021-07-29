<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>RAMLY HALAL MART</title>
        <!--/tags -->
        <%@ include file="meta.html" %>
	<!--//tags -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/font-awesome.css" rel="stylesheet">
	<!--pop-up-box-->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!--//pop-up-box-->
	<!-- price range -->
	<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
	<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
       <style>
            ::before, ::after {
            box-sizing: border-box;
            }
            .section {
                background-color:#EDD787;
                min-height: 100vh;
                display:block;
                padding: 0 400px;
            }
            .section .container {
                padding-top: 40px;
                padding-bottom: 70px;
            }
            .padd-15 {
                padding-left:-1px;
                padding-right: 1px;
            }
            .col-25 {
                float: left;
                width:15%;
                margin-top: 15px;
                margin-left: 15px;
            }
            .col-75 {
                float: left;
                width: 80%;
                margin-top: 15px;
                text-align: center;
             }
            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            input[type=text], input[type=password], input[type=email], input[type=tel], textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }
            input[type=checkbox] {
                margin: 12px 12px 12px 200px;
            }
            input[readonly] {
                color: graytext;
                background: buttonface;
                outline: none;
            }
            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }
            .product-sec2 {
                box-shadow: 0px 10px 15px 0px #D6D6D6;
                padding: 0px;
                margin-bottom: 14px;
            }
        </style>
    </head>
    <%@page import="ramly.model.Customer"%>
    <% Customer cust = (Customer) session.getAttribute("login");
        if(cust == null){
            response.sendRedirect("LoginCustomer.jsp");
        }
    %>
    <body>
        <!-- header-bot-->
        <%@ include file="CustNav.jsp" %>
        <!-- //header lists -->
        <!-- top Products -->
        <div class="ads-grid">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Update Profile
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->		
                <div class="product-sec2"><br>
                    <br>
                    <div class="card">
                        <div class="card-body">        
                            <form name="form1" method="post" id="ff" onsubmit="showAlertSuccessfulUpdate()" action="CustomerController?action=updateCustomer">
                                <center>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">User ID :</label>
                                        </div>	
                                        <div class="col-75">
                                            <input type="text" name="custID" id="custID" value="<%=cust.getCustID()%>" readonly><br>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">Name :</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="text" name="custName" pattern="^[a-zA-Z]{2,}(?: [a-zA-Z-@']+){0,}$" title="Cannot starts with numbers and symbols. Must contains atleast 2 characters. Cannot contain numbers and symbols except: @ - ' "  id="custName" value="<%=cust.getCustName()%>" required><br>	
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">No. Phone:</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="tel" name="custPhone" id="custPhone" placeholder="Example: 012-3456789" pattern="[0-9]{3}-[0-9]{7}" value="<%=cust.getCustPhone()%>" required><br>	
                                        </div>
                                     </div>  
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">Email :</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="email" name="custEmail" id="custEmail" placeholder="Example: abuali@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<%=cust.getCustEmail()%>" readonly><br>	
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="subject">Address :</label>
                                        </div>
                                        <div class="col-75">
                                            <textarea name="custAddress" id="custAddress" required><%=cust.getCustAddress()%></textarea>
                                            <br>	
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">Username :</label>
                                        </div>	
                                        <div class="col-75">
                                            <input type="text" name="custUsername" id="custUsername" value="<%=cust.getCustUsername()%>" required><br>	
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-25">
                                            <label for="name">Password :</label>
                                        </div>
                                        <div class="col-75">
                                            <input type="password" name="custPassword" id="custPassword" placeholder="Example: Abu123" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" minlength="6" value="<%=cust.getCustPassword()%>" required><br>	
                                        </div>
                                    </div>
                                </center>
                                <div class="row">
                                    <input type="checkbox" onclick="showPassword()">Show Password
                                </div>
                                <center>
                                    <br><br>
                                    <a href="CustomerController?action=viewCustomer&id=<%=cust.getCustID()%>" class="btn btn-warning"><i class="fa fa-arrow-left" aria-hidden="true"></i> Back</a>
                                    <input type="submit" value="Update" class="btn btn-success">
                                    <br><br>
                                </center>
                            </form>
                            <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>
                            <script>
                                function showAlertSuccessfulUpdate() {
                                    Swal.fire({
                                        position: 'top-center',
                                        icon: 'success',
                                        title: 'Profile update successfully',
                                        showConfirmButton: false,
                                        timer: 4500
                                    });
                                }
                                function showPassword() {
                                    var x = document.getElementById("custPassword")

                                    if(x.type === "password") {
                                        x.type = "text";
                                    }
                                    else {
                                        x.type = "password";
                                    }
                                }
                            </script>        
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- js-files -->
        <!-- jquery -->
        <script src="js/jquery-2.1.4.min.js"></script>
        <!-- //jquery -->
        <!-- for bootstrap working -->
        <script src="js/bootstrap.js"></script>
        <!-- //for bootstrap working -->
        <!-- //js-files -->
    </body>
</html>`