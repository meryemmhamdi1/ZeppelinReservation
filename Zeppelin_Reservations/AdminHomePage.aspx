<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

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
        <form id="form1" runat="server">
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
                                    <a href="#">Welcome Back</a> &nbsp; <a href="ManageAccount.aspx">Manage Account 
                                   
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
                                        <li><a href="AgentHomePage.aspx">Home</a></li>
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
         <li><a href="#tab1">Manage Flight</a></li>
         <li><a href="#tab2">Add Flight</a></li>
         
      </ul>
   </div>
   <div class="main-container" id="tab1">
     
     <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Manage Flight<asp:GridView 
             ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="zf_ID" 
             DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" 
             BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
             GridLines="Vertical">
         <AlternatingRowStyle BackColor="#CCCCCC" />
         <Columns>
             <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
             <asp:BoundField DataField="zf_ID" HeaderText="Flight ID" ReadOnly="True" 
                 SortExpression="zf_ID" />
             <asp:BoundField DataField="zf_departureDate" HeaderText="Departure Date" 
                 SortExpression="zf_departureDate" />
             <asp:BoundField DataField="zf_arrivalDate" HeaderText="Arrival Date" 
                 SortExpression="zf_arrivalDate" />
             <asp:BoundField DataField="zf_departureTime" HeaderText="Departure Time" 
                 SortExpression="zf_departureTime" />
             <asp:BoundField DataField="zf_arrivalTime" HeaderText="Arrival Time" 
                 SortExpression="zf_arrivalTime" />
             <asp:BoundField DataField="zf_departureAirport" HeaderText="From" 
                 SortExpression="zf_departureAirport" />
             <asp:BoundField DataField="zf_destinationAirport" HeaderText="To" 
                 SortExpression="zf_destinationAirport" />
             <asp:BoundField DataField="zf_price" HeaderText="Ticket Price" 
                 SortExpression="zf_price" />
             <asp:BoundField DataField="zf_currency" HeaderText="Currency" 
                 SortExpression="zf_currency" />
         </Columns>
         <FooterStyle BackColor="#CCCCCC" />
         <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
         <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#808080" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#383838" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
             ConflictDetection="CompareAllValues" 
             ConnectionString="<%$ ConnectionStrings:tahrisqallimConnectionString %>" 
             DeleteCommand="DELETE FROM [ZeppelinFlight] WHERE [zf_ID] = @original_zf_ID AND (([zf_departureDate] = @original_zf_departureDate) OR ([zf_departureDate] IS NULL AND @original_zf_departureDate IS NULL)) AND (([zf_arrivalDate] = @original_zf_arrivalDate) OR ([zf_arrivalDate] IS NULL AND @original_zf_arrivalDate IS NULL)) AND (([zf_departureTime] = @original_zf_departureTime) OR ([zf_departureTime] IS NULL AND @original_zf_departureTime IS NULL)) AND (([zf_arrivalTime] = @original_zf_arrivalTime) OR ([zf_arrivalTime] IS NULL AND @original_zf_arrivalTime IS NULL)) AND (([zf_departureAirport] = @original_zf_departureAirport) OR ([zf_departureAirport] IS NULL AND @original_zf_departureAirport IS NULL)) AND (([zf_destinationAirport] = @original_zf_destinationAirport) OR ([zf_destinationAirport] IS NULL AND @original_zf_destinationAirport IS NULL)) AND (([zf_price] = @original_zf_price) OR ([zf_price] IS NULL AND @original_zf_price IS NULL)) AND (([zf_currency] = @original_zf_currency) OR ([zf_currency] IS NULL AND @original_zf_currency IS NULL))" 
             InsertCommand="INSERT INTO [ZeppelinFlight] ([zf_ID], [zf_departureDate], [zf_arrivalDate], [zf_departureTime], [zf_arrivalTime], [zf_departureAirport], [zf_destinationAirport], [zf_price], [zf_currency]) VALUES (@zf_ID, @zf_departureDate, @zf_arrivalDate, @zf_departureTime, @zf_arrivalTime, @zf_departureAirport, @zf_destinationAirport, @zf_price, @zf_currency)" 
             OldValuesParameterFormatString="original_{0}" 
             SelectCommand="SELECT [zf_ID], [zf_departureDate], [zf_arrivalDate], [zf_departureTime], [zf_arrivalTime], [zf_departureAirport], [zf_destinationAirport], [zf_price], [zf_currency] FROM [ZeppelinFlight]" 
             UpdateCommand="UPDATE [ZeppelinFlight] SET [zf_departureDate] = @zf_departureDate, [zf_arrivalDate] = @zf_arrivalDate, [zf_departureTime] = @zf_departureTime, [zf_arrivalTime] = @zf_arrivalTime, [zf_departureAirport] = @zf_departureAirport, [zf_destinationAirport] = @zf_destinationAirport, [zf_price] = @zf_price, [zf_currency] = @zf_currency WHERE [zf_ID] = @original_zf_ID AND (([zf_departureDate] = @original_zf_departureDate) OR ([zf_departureDate] IS NULL AND @original_zf_departureDate IS NULL)) AND (([zf_arrivalDate] = @original_zf_arrivalDate) OR ([zf_arrivalDate] IS NULL AND @original_zf_arrivalDate IS NULL)) AND (([zf_departureTime] = @original_zf_departureTime) OR ([zf_departureTime] IS NULL AND @original_zf_departureTime IS NULL)) AND (([zf_arrivalTime] = @original_zf_arrivalTime) OR ([zf_arrivalTime] IS NULL AND @original_zf_arrivalTime IS NULL)) AND (([zf_departureAirport] = @original_zf_departureAirport) OR ([zf_departureAirport] IS NULL AND @original_zf_departureAirport IS NULL)) AND (([zf_destinationAirport] = @original_zf_destinationAirport) OR ([zf_destinationAirport] IS NULL AND @original_zf_destinationAirport IS NULL)) AND (([zf_price] = @original_zf_price) OR ([zf_price] IS NULL AND @original_zf_price IS NULL)) AND (([zf_currency] = @original_zf_currency) OR ([zf_currency] IS NULL AND @original_zf_currency IS NULL))">
             <DeleteParameters>
                 <asp:Parameter Name="original_zf_ID" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_zf_departureDate" />
                 <asp:Parameter DbType="Date" Name="original_zf_arrivalDate" />
                 <asp:Parameter DbType="Time" Name="original_zf_departureTime" />
                 <asp:Parameter DbType="Time" Name="original_zf_arrivalTime" />
                 <asp:Parameter Name="original_zf_departureAirport" Type="String" />
                 <asp:Parameter Name="original_zf_destinationAirport" Type="String" />
                 <asp:Parameter Name="original_zf_price" Type="Int32" />
                 <asp:Parameter Name="original_zf_currency" Type="String" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="zf_ID" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="zf_departureDate" />
                 <asp:Parameter DbType="Date" Name="zf_arrivalDate" />
                 <asp:Parameter DbType="Time" Name="zf_departureTime" />
                 <asp:Parameter DbType="Time" Name="zf_arrivalTime" />
                 <asp:Parameter Name="zf_departureAirport" Type="String" />
                 <asp:Parameter Name="zf_destinationAirport" Type="String" />
                 <asp:Parameter Name="zf_price" Type="Int32" />
                 <asp:Parameter Name="zf_currency" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter DbType="Date" Name="zf_departureDate" />
                 <asp:Parameter DbType="Date" Name="zf_arrivalDate" />
                 <asp:Parameter DbType="Time" Name="zf_departureTime" />
                 <asp:Parameter DbType="Time" Name="zf_arrivalTime" />
                 <asp:Parameter Name="zf_departureAirport" Type="String" />
                 <asp:Parameter Name="zf_destinationAirport" Type="String" />
                 <asp:Parameter Name="zf_price" Type="Int32" />
                 <asp:Parameter Name="zf_currency" Type="String" />
                 <asp:Parameter Name="original_zf_ID" Type="Int32" />
                 <asp:Parameter DbType="Date" Name="original_zf_departureDate" />
                 <asp:Parameter DbType="Date" Name="original_zf_arrivalDate" />
                 <asp:Parameter DbType="Time" Name="original_zf_departureTime" />
                 <asp:Parameter DbType="Time" Name="original_zf_arrivalTime" />
                 <asp:Parameter Name="original_zf_departureAirport" Type="String" />
                 <asp:Parameter Name="original_zf_destinationAirport" Type="String" />
                 <asp:Parameter Name="original_zf_price" Type="Int32" />
                 <asp:Parameter Name="original_zf_currency" Type="String" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" 
             Text="Generate Report" Width="523px" />
       </h3>
       <p>&nbsp;</p>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
       
       <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource3">
           <series>
               <asp:Series ChartType="Bar" Name="Series1" XValueMember="Date" 
                   YValueMembers="Column1">
               </asp:Series>
           </series>
           <chartareas>
               <asp:ChartArea Name="ChartArea1">
               </asp:ChartArea>
           </chartareas>
       </asp:Chart>
       <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
           ConnectionString="<%$ ConnectionStrings:tahrisqallimConnectionString %>" 
           SelectCommand="SELECT a.Date,count(a.zres_ID) FROM  ZeppelinReservation a inner join ZeppelinReservation b ON a.Date=b.Date Group by a.Date;">
       </asp:SqlDataSource>
       
       <br />

       </p>
   </div>
    <div class="main-container" id="tab2">
       <h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add Flight</h3>
     &nbsp;&nbsp;&nbsp; Flight ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        Arrival Date&nbsp;&nbsp;
        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp; Departure Date
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Arrival Time
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp; Departure Time
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        To&nbsp;
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Price&nbsp;
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Currency
        <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N°of stops&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        Airship
        <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; N° of Seats&nbsp;&nbsp;
        <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp; &quot;Business&quot;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        N° of Seats
        <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
&nbsp;&quot;First Class&quot;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Submit" runat="server" OnClick="Button1_Click" Text="Submit" />

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
        </form>
</body>
</html>
