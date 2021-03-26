<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Blood Bank Management System</title>
    <link rel="shortcut icon" href="assets/images/fav.png" type="image/x-icon">
    <link href="https://fonts.googleapis.com/css?family=Merriweather&display=swap" rel="stylesheet">
    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/grid-gallery/css/grid-gallery.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>

<body>
        <header class="continer-fluid ">
      
            <div id="menu-jk" class="header-bottom">
                <div class="container">
                    <div class="row nav-row">
                        <div class="col-md-3 logo">
                            <h5>Blood Bank Management System</h5>
                        </div>
                        <div class="col-md-9 nav-col">
                            <nav class="navbar navbar-expand-lg navbar-light">

                                <button
                                    class="navbar-toggler"
                                    type="button"
                                    data-toggle="collapse"
                                    data-target="#navbarNav"
                                    aria-controls="navbarNav"
                                    aria-expanded="false"
                                    aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarNav">
                                    <ul class="navbar-nav">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="PatientHome.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="ViewMyProfile.jsp">View Profile</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="AvailableBlood.jsp">Available Blood</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="RequestStatus.jsp">Request Status</a>
                                        </li>  
                                        <li class="nav-item">
                                            <a class="nav-link" href="Patient.jsp">Logout</a>
                                        </li>
                                        
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        
        
    <!-- ################# Slider Starts Here#######################--->

    <div class="slider-detail">

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>

            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img class="d-block w-100" src="assets/images/slider/slide-02.jpg" alt="First slide">
                    <div class="carousel-caption d-none d-md-block">
                        <% String username=(String)session.getAttribute("username");
                        String pid=(String)session.getAttribute("pid");%>
                        <h5 class=" bounceInDown">Welcome  <%=username%></h5>
                        
                       
                    </div>
                </div>

                
        </div>


    </div>
    
    <!--*************** About Us Starts Here ***************-->
   
    
          
    
      <!-- ################# Gallery Start Here #######################--->
     
    <div id="gallery" class="gallery container-fluid">
        <div class="container">
            <div class="row session-title">
                <h2>Checkout Our Gallery</h2>
            </div>
            <div class="gallery-row row">
                    <div id="gg-screen"></div>
                    <div class="gg-box">
                            <div class="gg-element">
                                <img src="assets/images/gallery/g1.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g2.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g3.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g4.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g5.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g6.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g7.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g8.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g9.jpg">
                            </div>
                            <div class="gg-element">
                                <img src="assets/images/gallery/g10.jpg">
                            </div>
                            
                            
                          </div>
            </div>
        </div>
    </div>
    
    
    
     <!-- ################# Donation Process Start Here #######################--->
     
     <section id="process" class="donation-care">
         <div class="container">
           <div class="row session-title">
               <h2>Donation Process</h2>
               <p>The donation process from the time you arrive center until the time you leave</p>
           </div>
            <div class="row">
                 <div class="col-md-3 col-sm-6 vd">
                    <div class="bkjiu">
                     <img src="assets/images/gallery/g1.jpg" alt="">
                     <h4><b>1 - </b>Registration</h4>
                     <p>User Has To register into our project with the basic details.</p>
                     <button class="btn btn-sm btn-danger">Readmore <i class="fas fa-arrow-right"></i></button>
                     </div>
                 </div>
                 <div class="col-md-3 col-sm-6 vd">
                    <div class="bkjiu">
                     <img src="assets/images/gallery/g2.jpg" alt="">
                        <h4><b>2 - </b>Seeing</h4>
                     <p>Once Done the Registration they can able view all the process</p>
                     <button class="btn btn-sm btn-danger">Readmore <i class="fas fa-arrow-right"></i></button>
                     </div>
                 </div>
                 <div class="col-md-3 col-sm-6 vd">
                    <div class="bkjiu">
                     <img src="assets/images/gallery/g3.jpg" alt="">
                        <h4><b>3 - </b>Donation</h4>
                     <p>If user want donate the blood they can show the intrest on donation</p>
                     <button class="btn btn-sm btn-danger">Readmore <i class="fas fa-arrow-right"></i></button>
                     </div>
                 </div>
                 <div class="col-md-3 col-sm-6 vd">
                    <div class="bkjiu">
                        <img src="assets/images/gallery/g4.jpg" alt="">
                        <h4><b>4 - </b>Save Life</h4>
                         <p>If we do the blood donation we can save the life and we are also healthy</p>
                         <button class="btn btn-sm btn-danger">Readmore <i class="fas fa-arrow-right"></i></button>
                    </div> 
                 </div>
            </div>
            
             
         </div>
     </section>
     
     
     
     
        

     
     

   
      <!--*************** Footer  Starts Here *************** -->
    <footer id="contact" class="container-fluid">
        <div class="container">
            
            
            <div class="footer-copy">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <p>Copyright © <a href="#">sundar</a> | All right reserved.</p>
                    </div>
                    <div class="col-lg-4 col-md-6 socila-link">
                        <ul>
                            <li><a><i class="fab fa-github"></i></a></li>
                            <li><a><i class="fab fa-google-plus-g"></i></a></li>
                            <li><a><i class="fab fa-pinterest-p"></i></a></li>
                            <li><a><i class="fab fa-twitter"></i></a></li>
                            <li><a><i class="fab fa-facebook-f"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    
</body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
