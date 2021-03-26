
<%@page import="com.database.Queries"%>
<%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <style>
        table
        {
            
        }
        table tr td{
            padding:5px;
        }
    </style>
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
                                            <a class="nav-link" href="index.html">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="Donor.jsp">Donor</a>
                                        </li>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="Patient.jsp">Patient</a>
                                        </li>
                                        
                                        <li class="nav-item">
                                            <a class="nav-link" href="Admin.jsp">Admin</a>
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
<%
    
    
    
    Random rand = new Random();
    
    String did ="P_"+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)
            +String.valueOf(rand.nextInt(10))+String.valueOf(rand.nextInt(10)));
    
  
%>
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
                        <h5 class=" bounceInDown">Patient Registration Screen</h5>
                        <form action='PatientRegAction.jsp' method='post'>
                <table align="center" cellpadding="5px"style="margin-left: 35%;">
                    <tr><th>User Id</th><td><input type='text' name='pid' value="<%=did%>"></td><tr/>
                   
                    <tr><th>Name</th><td><input type='text' name='name' required='' placeholder="Name"></td><tr/>
                   
                    <tr><th>Email</th><td><input type='email' name='email' required='' placeholder="Email"></td><tr/>
                     <tr><th>Mobile</th><td><input type='number' name='mobile' required='' placeholder="Mobile"></td><tr/>
                
                    <tr><th>Address</th><td><input type='text' name='address' required='' placeholder="Address"></td><tr/>
                   <tr><th>Gender</th><td><select name="gender">
                                <option value="Male">Male</option>
                                <option value="FeMale">FeMale</option>
                                <option value="Others">Others</option>
                            </select></td></tr>
                   <tr><th>Hospital</th><td><select name="hsp" required="">
                                <option></option>
                                <%try{
                                ResultSet r=Queries.getExecuteQuery("select * from hospital");
                                while(r.next()){
                                %>
                                <option value="<%=r.getString("hid")%>"><%=r.getString("hid")%>,<%=r.getString("name")%></option>
                              
                                <%}
}catch(Exception e){
out.println(e);
}%>
                            </select></td></tr>
                    <tr><th>UserName</th><td><input type='text' name='username' required='' placeholder="UserName"></td><tr/>
                
                    <tr><th>Password</th><td><input type='password' name='password' required='' placeholder="Password"></td><tr/>
           
                    <tr><th><input type='submit' value='Register'></th>
                    <td><a href='Patient.jsp'>Login</a></td><tr/>
                </table>
            </form>     
                       
                    </div>
                </div>

                
        </div>


    </div>
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
