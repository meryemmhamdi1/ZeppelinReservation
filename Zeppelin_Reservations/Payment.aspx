<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="Payment" %>

<!DOCTYPE html>
<style type="text/css">
    .auto-style1
    {
        height: 20px;
    }
    .auto-style3
    {
        height: 20px;
        width: 170px;
    }
    .auto-style4
    {
        width: 170px;
    }
</style>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<form id="form1" runat="server">
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->


    <head>
        <meta charset="utf-8">
        <title>Zeppelin Reservations</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">
        
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/font-awesome.css">
        <link rel="stylesheet" href="css/templatemo_style.css">
        <link rel="stylesheet" href="css/templatemo_misc.css">
        <link rel="stylesheet" href="css/flexslider.css">
        <link rel="stylesheet" href="css/testimonails-slider.css">
        <link rel="stylesheet" href="css/StyleSheet.css">

        <script src="js/vendor/modernizr-2.6.1-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an outdated browser. <a href="http://browsehappy.com/">Upgrade your browser today</a> or <a href="http://www.google.com/chromeframe/?redirect=true">install Google Chrome Frame</a> to better experience this site.</p>
        <![endif]-->

            <header>
                <div id="top-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                
                            </div>
                            <div class="col-md-6">
                                 <div class="cart-info">
                                    <a href="#">Welcome Back</a> &nbsp; 
                                    <a href="SignUpSheet.aspx">Update Info</a> &nbsp; 
                                    <a href="HomePage.aspx">Logout</a> &nbsp; 
                                    <a href="#">Delete Account</a> &nbsp;
                                    <a href="#">Help</a> &nbsp;  

                                 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="main-header">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="logo">
                                    <a href="#"><img src="images/zeppelin-logo.png" title="Grill Template" alt="Grill Website Template" ></a>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="main-menu">
                                    <ul>
                                        <li><a href="HomePage.aspx">Home</a></li>
                                        <li><a href="About.aspx">About US</a> </li>
                                        <li><a href="Destinations.aspx">Featured Destinations</a></li>
                                        <li><a href="Contact.aspx">Contact US</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Billing Information" 
                        Font-Bold="True" Font-Size="Large" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <table style="width: 74%;" align="center">
            <tr>
                <td class="auto-style3"> <asp:Label ID="Label2" runat="server" Text="Payment Type:"></asp:Label>&nbsp;</td>
                <td class="auto-style1"> <asp:DropDownList ID="DropDownList2" runat="server" 
                        OnLoad="DropDownList2_Load"></asp:DropDownList></td>
           
            </tr>
            <tr>
                <td class="auto-style3">Credit Card Number: </td>
                <td class="auto-style1">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">End Validation Date:</td>
                <td>&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" 
                        OnLoad="DropDownList3_Load"></asp:DropDownList>&nbsp; 
                    <asp:DropDownList ID="DropDownList4" runat="server" OnLoad="DropDownList4_Load"></asp:DropDownList>
                    <br />
                </td>
                
            </tr>
            
            <tr>
                <td class="auto-style4">&nbsp;Card ID Number</td>
                <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <br />
                    
                </td>
                
            </tr>
            
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Confirm Reservation" 
                        align="center" OnClick="Button1_Click"/>
<asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>


                </td>
                
            </tr>
            
        </table>

        &nbsp;<footer>
                <div class="container">
                    <div class="top-footer">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="subscribe-form">
                                    <span>Get in touch with us</span>
                                        
                                    </div>
                            </div>
                            <div class="col-md-3">
                                <div class="social-bottom">
                                    <span>Follow us:</span>
                                    <ul>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-twitter"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-footer">
                        <div class="row">
                            <div class="col-md-3">
                                <div class="about">
                                    <h4 class="footer-title">About Us</h4>
                                    <p>Zeppelin Reservations is a company that offers many services for its clients. The Zeppelin Reservation is an enterprise solution for managing customer and flight 
                                    information for an airline. The primary function of the portal is to manage flight 
                                    information and perform reservations and cancellations. However, the duties in an 
                                    airline also involve performing allied tasks, such as querying the status of flights, 
                                    managing accounts of executives who perform the reservations, and generating reports 
                                    to interpret airline performance.
                                   </p>
                                </div>
                            </div>
                           
                            <div class="col-md-3">
                                <div class="more-info">
                                    <h4 class="footer-title">More info</h4>
                                    <p>For more info, don't hesitate to contact us.</p>
                                    <ul>
                                        <li><i class="fa fa-phone"></i>010-020-0340</li>
                                        <li><i class="fa fa-globe"></i>P.O. Box 104, Hassan II Avenue, 53000 Ifrane, Morocco</li>
                                        <li><i class="fa fa-envelope"></i><a href="#">info@zeppelin.com</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-footer">
                        <p>Copyright © 2014 <a href="#">Zeppelin Reservations</a> | Designed by Software Engineering II team</a></p>
                    </div>
                    
                </div>
            </footer>

    
        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
</form>

