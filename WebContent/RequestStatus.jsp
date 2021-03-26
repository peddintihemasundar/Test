<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
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
     <link rel="stylesheet" type="text/css" href="table.css" />
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
                                            <a class="nav-link" href="PatientHome.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="ViewMyProfile.jsp">View Profile</a>
                                        </li>
                                        <li class="nav-item ">
                                            <a class="nav-link" href="AvailableBlood.jsp">Available Blood</a>
                                        </li>
                                        <li class="nav-item active">
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

    
    <!--*************** About Us Starts Here ***************-->
   
    
          
    
      <!-- ################# Gallery Start Here #######################--->
     
    <div id="gallery" class="gallery container-fluid">
        <div class="container">
            <div class="row session-title">
                <h2>Request Status</h2>
            </div>
           <% String username=(String)session.getAttribute("username");
                        String pid=(String)session.getAttribute("pid");
           System.out.println(pid);%>
            
                    <center>
                        <table>
                          
                            <th>Donor ID</th>
                            <th>Blood Bank</th>
                             <th>Blood Group</th>
                            <th>Request Date</th>
                            <th>Request Status</th>
                            <th>Accept Date</th>
                            </tr>
                       <%
                       try{
                           ResultSet r=Queries.getExecuteQuery("select * from request where pid='"+pid+"'");
                           while(r.next()){
                               %>
                               <tr>
                                   
                                   <td><%=r.getString("did")%></td>
                                   <td><%=r.getString("bname")%></td>
                                   <td><%=r.getString("bgroup")%></td>
                                   <td><%=r.getString("rdate")%></td>
                                   <td><%=r.getString("status")%></td>
                                   <td><%=r.getString("adate")%></td>
                             
                               </tr>
                               <%
                           }
                       }catch(Exception e){
                         out.println(e);  
                       }
                       
                       %>     
                            
                            
                        </table>
                        
                        
                        
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
