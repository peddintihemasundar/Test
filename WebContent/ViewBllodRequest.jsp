<%@page import="java.sql.ResultSet"%>
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
                                            <a class="nav-link" href="DonorHome.jsp">Home
                                            </a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="UpdateProfile.jsp">Update Profile</a>
                                        </li>
                                        <li class="nav-item active">
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

   
                        <% String username=(String)session.getAttribute("username");
                        String did=(String)session.getAttribute("did");%>
                      
                       




   <center>
       <h3 style="margin-top:100px;">All Blood Request</h3>
                        <table>
                          
                            <th>Patient Name</th>
                            <th>Blood Group</th>
                            <th>Blood Bank</th>
                            <th>Request Date</th>
                             <th>Accept Date</th>
                            <th>Status</th>
                            </tr>
                       <%
                       try{
                           ResultSet r=Queries.getExecuteQuery("select * from request where did='"+did+"'");
                           while(r.next()){
                               String status=r.getString("status");
                               %>
                               <tr>
                                   
                                   <td><%=r.getString(3)%></td>
                                   <td><font color="red"><%=r.getString(6)%></font></td>
                                   <td><%=r.getString(5)%></td>
                                    <td><%=r.getString(7)%></td>
                                     <td><%=r.getString("adate")%></td>
                                    <%if(status.equals("waiting")){
                                        %>
                                          <td><a href="RequestAccept.jsp?rid=<%=r.getString(1)%>&did=<%=r.getString("did")%>">Accept</td>
                                        <%
                                    }else{
%>
<td><%=r.getString("status")%></td>
<%
}%>
                                 
                               </tr>
                               <%
                           }
                       }catch(Exception e){
                         out.println(e);  
                       }
                       
                       %>     
                            
                            
                        </table>
                        
                        
                        
                    </center>

    
    
    
</body>

    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/plugins/grid-gallery/js/grid-gallery.min.js"></script>
    <script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
    <script src="assets/js/script.js"></script>
</html>

