<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUpSheet.aspx.cs" Inherits="SignUpSheet" %>
<!DOCTYPE html>
<style type="text/css">
    .auto-style1
    {
        width: 165px;
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

                              
                            </div>&nbsp;&nbsp;


                            </div>
                        </div>
                    </div>
                </div>
                <div id="main-header">
                    <div class="container">
                        <div class="row" style="color: #0000FF">
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
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <h2> Update Personal Information</h2>
                            <table style="width:100%;" >
                               
                                <tr>
                                    <td class="auto-style1">Username:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" Width="239px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Password:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" Width="239px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">First Name:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" Width="238px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Last Name:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="237px"></asp:TextBox>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Gender:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                            <asp:ListItem>Male</asp:ListItem>
                                            <asp:ListItem>Female</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Birthday:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" Width="233px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Email:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" Width="233px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Address:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" Width="232px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">City:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" Width="229px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Country:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" Width="227px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Zip Code:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" Width="226px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Phone Number:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server" Width="226px"></asp:TextBox>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Security Question:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server">
                                            <asp:ListItem>What is the name of the city you were born in?</asp:ListItem>
                                            <asp:ListItem>What is the name of your first pet?</asp:ListItem>
                                            <asp:ListItem>What is the brand of your first car?</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Security Answer:</td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" Width="226px"></asp:TextBox>
                                        <br />
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Type:</td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem>Admin</asp:ListItem>
                                            <asp:ListItem>client</asp:ListItem>
                                             <asp:ListItem>Agent</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                                            Text="Update Info" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">&nbsp;</td>
                                    <td>
                                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </header>
             </body>
</html>
</form>

