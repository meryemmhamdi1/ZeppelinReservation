<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>
<!DOCTYPE html>
<head>
	
	<title>Sign Up Sheet</title>
	<meta name="keywords" content="" />
	<meta name="description" content="" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
	<link href="css/templatemo_style.css" rel="stylesheet" type="text/css">	
</head>
<body  style="background-image:url(images/slide1.jpg)">
	<h1 class="margin-bottom-15" style="color: #FF6600">Create Account</h1>
	<div class="container">
		<div class="col-md-12">			
			<form class="form-horizontal templatemo-create-account templatemo-container" role="form" action="#" method="post" runat="server">
				<div class="form-inner">
					<div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="first_name" class="control-label">First Name</label>
                        <asp:TextBox ID="first_name" runat="server" ></asp:TextBox>	            		            		            
			          </div>  
			          <div class="col-md-6">		          	
			            <label for="last_name" class="control-label">Last Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="last_name" runat="server" ></asp:TextBox>	     	            		            		            
			          </div>             
			        </div>
			      		
			        <div class="form-group">
			          <div class="col-md-6">		          	
			            <label for="username" class="control-label">Username </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			         <asp:TextBox ID="username" runat="server" ></asp:TextBox>	       	            		            		            
			          </div>
			          <div class="col-md-6 templatemo-radio-group">
                     
                            <asp:RadioButtonList ID="rbgender" runat="server" 
                                RepeatDirection="Horizontal" RepeatLayout="Table">
                                <asp:ListItem Text="Female" Value="Female"></asp:ListItem>
                                <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                            </asp:RadioButtonList>  
                      
			        </div>
                        Birth Date <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
			        <div class="form-group">
			          <div class="col-md-6">
			            <label for="password" class="control-label">Password</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			           <asp:TextBox ID="password" type="password" runat="server" ></asp:TextBox>	       
			          </div>
			          <div class="col-md-6">
			            <label for="password" class="control-label">Confirm Password</label>&nbsp;
			         <asp:TextBox ID="passwordconfirm" type="password" runat="server" ></asp:TextBox>	       
			          </div>
			        </div>
                     <div class="form-group">
                    <div class="col-md-6">
			            <label for="securityQuestion" class="control-label">Security Question</label>&nbsp;&nbsp;
			         <asp:DropDownList ID="DropDownList1" runat="server" OnLoad="DropDownList1_Load"> </asp:DropDownList>      
			          </div>
                      <br />
                      </div>
                      <div class="form-group">
                      <div class="col-md-6">
			            <label for="securityAnswer" class="control-label">Answer</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="answer" runat="server" ></asp:TextBox>	       
			          </div>
                      </div>
                        <div class="form-group">
			          <div class="col-md-12">		          	
			            <label for="email" class="control-label">Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			                 <asp:TextBox ID="email" runat="server" ></asp:TextBox>	                 		            		            
			          </div>              
			        </div>	
                     <div class="form-group">
                      <div class="col-md-6">
			            <label for="Address" class="control-label">Address</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="address" runat="server" ></asp:TextBox>	       
			          </div>
                      <div class="col-md-6">
			            <label for="zipcode" class="control-label">Zip Code</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="zipcode" runat="server" ></asp:TextBox>	       
			          </div>
                      <div class="col-md-6">
			            <label for="city" class="control-label">City</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="city" runat="server" ></asp:TextBox>	       
			          </div>
                       <div class="col-md-6">
			            <label for="Country" class="control-label">Country</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="country" runat="server" ></asp:TextBox>	       
			          </div>
                       
                       </div>  
                         <div class="col-md-6">
			            <label for="Phone" class="control-label">Phone Number</label>
                        <asp:TextBox ID="phone" runat="server" ></asp:TextBox>	       
			          </div>
			        <div class="form-group">
			          <div class="col-md-12">
			            <label><input type="checkbox">I agree to the <a href="javascript:;" data-toggle="modal" data-target="#templatemo_modal">Terms of Service</a> and <a href="#">Privacy Policy.</a></label>
			          </div>
			        </div>
			        <div class="form-group">
			          <div class="col-md-12">
                          <asp:Button ID="Button1" runat="server" Text="Register" 
                              OnClick="Button1_Click" />
                          <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
			            <a href="login-1.html" class="pull-right">Login</a>
			          </div>
			        </div>	
				</div>
                </div>				    	
		      </form>		      
		
	</div>
	<!-- Modal -->
	<div class="modal fade" id="templatemo_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
	        <h4 class="modal-title" id="myModalLabel">Terms of Service</h4>
	      </div>
	      <div class="modal-body">
	      	<p>This form is provided by <a rel="nofollow" href="http://www.templatemo.com/page/1">Free HTML5 Templates</a> that can be used for your websites. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
	        <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor. Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla. Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
	        <p>Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
</body>
</html>