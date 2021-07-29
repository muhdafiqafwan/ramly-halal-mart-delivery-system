<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
    <head>
	<title>RAMLY HALAL MART </title>
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
            .product-sec2 {
                box-shadow: 0px 10px 15px 0px #D6D6D6;
                padding: 30px 20px;
                margin-bottom: 14px;
            }
            * {
                box-sizing: border-box;
            }
            label {
              padding: 12px 12px 12px 60px;
              display: inline-block;
            }
            input[type=text], input[type=password], input[type=email]{
                width: 90%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }
            input[type=checkbox] {
                margin: 0px 12px 12px 65px;
            }
            input[type=reset], input[type=submit] {
              background-color: #644334;
              color: white;
              padding: 12px 20px;
              border: none;
              border-radius: 4px;
              cursor: pointer;
              float: center;
              width: 20%;
            }
            input[type=reset]:hover, input[type=submit]:hover {
              background-color: #462f25;
            }
	</style>
    </head>
    <body>
        <!-- header-bot-->
        <%@ include file="MainNav.jsp" %>
	<!-- //header-bot -->
	<!-- top Products -->
	<div class="ads-grid">
            <div class="container">
                <!-- tittle heading -->
                <h3 class="tittle-w3l">Customer
                    <span class="heading-style">
                        <i></i>
                        <i></i>
                        <i></i>
                    </span>
                </h3>
                <!-- //tittle heading -->
                <!-- form -->
                <div class="agileinfo-ads-display col-md-13 w3l-rightpro">
                    <div class="wrapper">
                        <!-- first section -->
                        <div class="product-sec2">
                            <h3 class="agileinfo_sign">Registration </h3>
                            <p align="center">Let's join Ramly Family now!<br>Already have an account?<a href="Login_Customer.jsp">Log In Here</a></p>
                            <p align="center"><span style="color:red"><%=(request.getAttribute("error") == null) ? "" : request.getAttribute("error")%></span></p>
                            <form name="form1" method="post" id="ff"  action="CustomerController?action=registerCustomer">
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Name</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="text" name="custName" id="custName" pattern="^[a-zA-Z]{2,}(?: [a-zA-Z-@']+){0,}$" title="Cannot starts with numbers and symbols. Must contains atleast 2 characters. Cannot contain numbers and symbols except: @ - ' " required>
                                            
                                        </div>
                                    </center>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">No. Phone</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="text" name="custPhone" id="custPhone" placeholder="Example: 012-3456789" pattern="[0-9]{3}-[0-9]{7}" required>
                                        </div>
                                    </center>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Email</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="text" name="custEmail" id="custEmail" placeholder="Example: abuali@gmail.com" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                                        </div>
                                    </center>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Address</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="text" name="custAddress" id="custAddress">
                                      </div>
                                    </center>
                                </div><br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Username</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="text" name="custUsername" id="custUsername" required>
                                      </div>
                                    </center>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Password</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="password" name="custPassword" id="custPassword" placeholder="Example: Abu123" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" minlength="6" required>
                                            <br>
                                            <span id = "message" style="color:red"> </span> 
                                        </div>
                                    </center>
                                </div>
                                <br>
                                <div class="row">
                                    <div class="col-25">
                                        <label for="name">Confirm Password</label>
                                    </div>
                                    <center>
                                        <div class="col-75">
                                            <input type="password" name="custPassword1" id="custPassword1" placeholder="Example: Abu123" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,}" minlength="6" required>
                                            <br>
                                            <span id = "messageMatch" style="color:red"> </span> <br>
                                        </div>
                                    </center>
                                </div>
                                <div class="row">
                                    <input type="checkbox" onclick="showPassword()">Show Password
                                    <br>
                                </div>
                                <div class="row" align="center">
                                    <br>
                                    <input type="reset" value="Reset"></input>   <input type="submit" onclick="return showFormValidation()" value="Register" ></input>
                                </div>
                            </form>
                            <script>  
                                function showFormValidation() {  
                                    var pw1 = document.getElementById("custPassword").value;  
                                    var pw2 = document.getElementById("custPassword1").value;  

                                    if(pw1 !== pw2)  {   
                                       document.getElementById("messageMatch").innerHTML = "**Password did not match";
                                       return false; 
                                    }
                                    return true;
                                }
                                function showPassword() {
                                    var x = document.getElementById("custPassword");
                                    var y = document.getElementById("custPassword1");

                                    if(x.type === "password") {
                                        x.type = "text";
                                    }
                                    else {
                                        x.type = "password";
                                    }
                                    
                                    if(y.type === "password") {
                                        y.type = "text";
                                    }
                                    else {
                                        y.type = "password";
                                    }
                                }
                            </script>  
                        </div>
                        <!-- //first section -->
                    </div>
                </div>
                <!-- //form -->
            </div>
	</div>
	<!-- //top products -->
	<!-- copyright -->
	<div class="copy-right">
            <div class="container">
                <p>© 2021 Ramly Halal Mart. All rights reserved | Design by Zephyr.</p>
            </div>
	</div>
	<!-- //copyright -->
	<!-- js-files -->
	<!-- jquery -->
	<script src="js/jquery-2.1.4.min.js"></script>
	<!-- //jquery -->
	<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
	<!-- //for bootstrap working -->
	<!-- //js-files -->
    </body>
</html>