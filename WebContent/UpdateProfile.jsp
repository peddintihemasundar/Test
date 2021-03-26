<%@page import="com.database.Queries"%>
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
                                            <a class="nav-link" href="DonorHome.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="UpdateProfile.jsp">Update Profile</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="ViewBllodRequest.jsp">Donate Blood</a>
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
                        <% String username=(String)session.getAttribute("username");%>
                        <h5 class=" bounceInDown">Welcome  <%=username%></h5>
                        <%@page import="java.util.Random"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.sql.*"%>
<%@page import="com.DBCon" %>
<%
 String did;
    try
    {
     Connection con=DBCon.getCon();
     Statement st=con.createStatement();
     ResultSet rs=st.executeQuery("select * from donor where username='"+username+"'");
     while(rs.next())
                    {
                       did=rs.getString(1);

     
  %>
                       <form action='ProfileUpdateAction.jsp' method='post'>
                <table align="center" cellpadding="5px"style="margin-left: 35%;">
                    <tr><th>User Id</th><td><input type='text' name='did' value="<%=did%>" readonly=""></td><tr/>
                   
                    <tr><th>Username</th><td><input type='text' name='name' value="<%=username%>"required='' readonly></td><tr/>
                   
                    <tr><th>Blood group</th><td><select name="bloodgroup">
                                <option value="O Negative">O Negative</option>
                                <option value="O Positive">O Positive</option>
                                <option value="A Negative">A Negative</option>
                                <option value="A Positive">A Positive</option>
                                <option value="B Negative">B Negative</option>
                                <option value="B Positive">B Positive</option>
                                <option value="AB Negative">AB Negative</option>
                                <option value="AB Positive">AB Positive</option>
                            </select></td>
                    </tr> <tr><th>Smoking </th><td><select name="smoking">
                                <option value="YES">YES</option>
                                <option value="NO">NO</option>
                                
                            </select></td><tr/>
                <tr><th>Blood Bank</th><td><select name="bbid" required="">
                                <option></option>
                                <%try{
                                ResultSet r=Queries.getExecuteQuery("select * from bank");
                                while(r.next()){
                                %>
                                <option value="<%=r.getString("name")%>"><%=r.getString("name")%></option>
                              
                                <%}
}catch(Exception e){
out.println(e);
}%>
                            </select></td></tr>
                    <tr><th>Alcohol Taken</th><td><select name="alcohol">
                                <option value="YES">YES</option>
                                <option value="NO">NO</option>
                                
                            </select></td><tr/>
                   
                    
                    <tr><th><input type='submit' value='Update'></th>
                    </div>
                </div>

                
        </div>
<%                    }
}
catch(Exception e)
{
out.println(e);
}
%>

   
    
    
    
</body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</html>

