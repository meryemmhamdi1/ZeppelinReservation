<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Destinations.aspx.cs" Inherits="Destinations" %>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->


    <head>
        <meta charset="utf-8">
        <title>Featured Destinations</title>
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
                                <div class="home-account">
                                   
                                </div>
                            </div>
                            <div class="col-md-6">
                                 <div class="cart-info">
                                    <a href="HomePage.aspx">Log In</a> &nbsp; <a href="SignUp.aspx">Sign Up</a>
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
                            <div class="col-md-3">
                                <div class="search-box">  
                                    <form name="search_form" method="get" class="search_form">
                                        <input id="search" type="text" />
                                        <input type="submit" id="search-button" />
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>


            <div id="heading">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="heading-content">
                                <h2>Our Destinations</h2>
                                <span>Home / <a href="about-us.html">Products</a></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





            <div id="products-post">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div id="product-heading">
                                <h2>Want to travel ?</h2>
                                <img src="images/under-heading.png" alt="" >
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="filters col-md-12 col-xs-12">
                            <ul id="filters" class="clearfix">
                                <li><span class="filter" data-filter="all">All</span></li>
                                <li><span class="filter" data-filter=".africa">Africa</span></li>
                                <li><span class="filter" data-filter=".europe">Europe</span></li>
                                <li><span class="filter" data-filter=".asia">Asia</span></li>
                                <li><span class="filter" data-filter=".northamerica">North America</span></li>
                                <li><span class="filter" data-filter=".australia">Australia</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="row" id="Container">
                        <div class="col-md-3 col-sm-6 mix portfolio-item Europe">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product1.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product1_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Europe</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                   
                                    <h3><a href="single-post.html">Spain</a></h3>
                                    <span class="text-category">$1600.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item africa">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product2.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product2_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Africa</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Morocco</a></h3>
                                    <span class="text-category">$2400.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item europe">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product3.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product3_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Europe</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">France</a></h3>
                                    <span class="text-category">$1200.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item asia">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product4.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product4_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Asia</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Dubai</a></h3>
                                    <span class="text-category">$700.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item northamerica">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product5.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product5_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>North America</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">New York</a></h3>
                                    <span class="text-category">$300.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item australia">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product6.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product6_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                            <span>Australia</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Sydney</a></h3>
                                    <span class="text-category">$800.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item europe">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product7.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product7_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                           
                                            <span>Europe</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Italy</a></h3>
                                    <span class="text-category">$1400.00</span>
                                </div>
                            </div>          
                        </div>
                        <div class="col-md-3 col-sm-6 mix portfolio-item asia">       
                            <div class="portfolio-wrapper">                
                                <div class="portfolio-thumb">
                                    <img src="images/product8.jpg" alt="" />
                                    <div class="hover">
                                        <div class="hover-iner">
                                            <a class="fancybox" href="images/product8_big.jpg"><img src="images/open-icon.png" alt="" /></a>
                                           
                                            
                                            
                                           
                                            <span>Asia</span>
                                        </div>
                                    </div>
                                </div>  
                                <div class="label-text">
                                    <h3><a href="single-post.html">Malaysia</a></h3>
                                    <span class="text-category">$600.00</span>
                                </div>
                            </div>          
                        </div>
                    </div>
                    <div class="pagination">
                        <div class="row">   
                            <div class="col-md-12">
                                <ul>
                                    <li><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">>></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>     
                </div>
            </div>



			<footer>
                <div class="container">
                    <div class="top-footer">
                        <div class="row">
                            <div class="col-md-9">
                                <div class="subscribe-form">
                                    <span>Get in touch with us</span>
                                    <form method="get" class="subscribeForm">
                                        <input id="subscribe" type="text" />
                                        <input type="submit" id="submitButton" />
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="social-bottom">
                                    <span>Follow us:</span>
                                    <ul>
                                        <li><a href="#" class="fa fa-facebook"></a></li>
                                        <li><a href="#" class="fa fa-twitter"></a></li>
                                        <li><a href="#" class="fa fa-rss"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="main-footer">
                        <div class="row">
                           
                            <div class="col-md-3">
                                <div class="more-info">
                                    <h4 class="footer-title">More info</h4>
                                    <p>Feel Welcome to contact us if you need more information about our destinations</p>
                                    <ul>
                                        <li><i class="fa fa-phone"></i>010-020-0340</li>
                                        <li><i class="fa fa-globe"></i>53000, Al Akhwayn University, Ifrane</li>
                                        <li><i class="fa fa-envelope"></i><a href="#">info@zeppelin.com</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bottom-footer">
                        <p>Copyright © 2014 <a href="#">Software Engineering II</a> | </p>
                    </div>
                    
                </div>
            </footer>

    
        <script src="js/vendor/jquery-1.11.0.min.js"></script>
        <script src="js/vendor/jquery.gmap3.min.js"></script>
        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>