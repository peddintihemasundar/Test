<%@page import="java.util.Random"%>
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
                                        <li class="nav-item ">
                                            <a class="nav-link" href="AdminHome.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="AddBloodBank.jsp">Add Blood Bank</a>
                                        </li>
                                        <li class="nav-item active">
                                            <a class="nav-link" href="AddHospital.jsp">Add Hospital</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="ViewBlood.jsp">View Blood Bank</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="ViewDonors.jsp">View Donor</a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="ViewPatient.jsp">View Patients</a>
                                        </li>
                                         
                                        <li class="nav-item">
                                            <a class="nav-link" href="Admin.jsp">Logout</a>
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

    
    <!--*************** About Us Starts Here ***************-->
   
    
          
    
      <!-- ################# Gallery Start Here #######################--->
     
    <div id="gallery" class="gallery container-fluid">
        <div class="container">
            <div class="row session-title">
                <h2>Add Hospital Here</h2>
            </div>
            <%
               Random rand = new Random();
    
    String did ="BB_"+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)
            +String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)));
            %>
            
                    <center>
                    <form action="HSPAction.jsp" method="post">
                        <table>
                            <tr><th>Hospital ID</th><td><input type="text" name="hid" value="<%=did%>" readonly=""></td></tr>
                            <tr><th>Name</th><td><input type="text" name="name" required=""></td></tr>
                          <tr><th>Location</th><td><input type="text" name="location" required=""></td></tr>
                            <tr><th></th><td><input type="submit" value="Submit">
                                <input type="reset" value="Reset"></td></tr>
                        
                         </table>
                        
                    </form>
                    </center>
           
        </div>
    </div>
    
    
   
</body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</html>
