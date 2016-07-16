<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ClientHomePage.aspx.cs" Inherits="ClientHomePage" %>

<!DOCTYPE html>
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
                                        <li><a href="ClientHomePage.aspx">Home</a></li>
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
<!--Start Code tab -->
<html><head><style>
 #content
{
   background-color:  #f3f3f3;
   padding: 20px 10px;
   overflow: auto;
}
#tab-container
{
   float: left;
   margin: 50px 0 0 0;
   width: 200px;
}
#tab-container ul
{
   list-style: none;
   text-align: center;
}
#tab-container ul li
{
   border-top: 1px solid #666;
   border-right: 1px solid #666;
   border-bottom: 1px solid #666;
   border-left: 8px solid #666;
   background-color: #ddd;
   margin: 8px 0;
}
#tab-container ul li a,
#tab-container ul li a:visited
{
   text-decoration: none;
   color: #666;
   display: block;
   padding: 15px 5px;
}
#tab-container ul li:hover
{
   border-left: 8px solid #333;
}
#tab-container ul li a:hover
{
   color: #000;
}
#tab-container ul li.selected
{
   border-right: none;
   background-color: #fff;
   border-left: 8px solid #888;
}
#main-container
{
   min-height: 400px;
   margin: 0 0 0 125px;
   padding: 20px;
   width:400px;
   background-color: #fff;
   border: 1px solid #888;
}
 </style>
  </head><body><div id="content">
   <div id="tab-container">
      <ul>
         <li><a href="#tab1">Book Flight</a></li>
         <li><a href="#tab2">Manage Existing Flights</a></li>
      </ul>
   </div>
   <div class="main-container" id="tab1">
     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Search for flight</h3>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;From  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;To<br />
       &nbsp;&nbsp;&nbsp;<asp:TextBox ID="departure_airport" runat="server" 
             placeholder="Airport" Width="249px"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="arrival_airport" runat="server" 
             placeholder="Airport" Width="249px"></asp:TextBox><br />
             &nbsp;&nbsp; <asp:TextBox ID="departure_date" runat="server" 
             placeholder="Departure Date" Width="249px"></asp:TextBox>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="arrival_date" runat="server" 
             placeholder="Arrival Date" Width="249px"> </asp:TextBox> <br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Passengers &nbsp;&nbsp;&nbsp; 
       <asp:DropDownList ID="DropDownList2" runat="server" OnLoad="DropDownList2_Load"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;class  <asp:DropDownList ID="DropDownList3" runat="server" OnLoad="DropDownList3_Load"></asp:DropDownList>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
           ID="Search" runat="server" Text="Search" Width ="200px" 
           OnClick="Search_Click"  align="center" /> <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Label 
           ID="Label1" runat="server" Text="Label" ForeColor="Red" align="center"></asp:Label> 
       <br />
      <br />
      <asp:GridView ID="GridView1" runat="server" align="center" 
           OnRowDataBound="GridView1_RowDataBound" 
           OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:tahrisqallimConnectionString %>" 
           SelectCommand="SELECT * FROM [ZeppelinFlight]">
       </asp:SqlDataSource> <asp:Label 
           ID="Label2" runat="server" Text="Label" ForeColor="Red" align="center"></asp:Label> 
       <br />
      
       <asp:Button ID="MakePayment" runat="server" Text="Make Payment" 
           OnClick="MakePayment_Click" />
       </p>
   </div>
    <div class="main-container" id="tab2">
       <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage My Trips</h3>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Confirmation Number: &nbsp;&nbsp;<asp:TextBox ID="ConfirmationNumber" runat="server" 
             Width="249px"></asp:TextBox>&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button
           ID="SearchTrip" runat="server" Text="Search" Width ="200px" 
            OnClick="SearchTrip_Click" />
        <asp:GridView ID="GridView2" runat="server" OnLoad="GridView2_Load" ></asp:GridView>
       </p>
   </div>
    
   <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
         $('#tab-container li a:not(:first)').addClass('inactive');
        $('.main-container:not(:first)').hide();
        $('#tab-container li a').click(function () {
            var t = $(this).attr('href');
            $('#tab-container li a').addClass('inactive');
            $(this).removeClass('inactive');
            $('.main-container').hide();
            $(t).fadeIn('slow');
            return false;
        })
       if ($(this).hasClass('inactive')) { //this is the start of our condition 
           $('#tab-container li a').addClass('inactive');
           $(this).removeClass('inactive');
           $('.main-container').hide();
           $(t).fadeIn('slow');
       }
    });
</script>

</div>
</body></html>



<!--Finish code tab-->
			<footer>
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
