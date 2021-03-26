
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String query="select * from donor where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
       
       
       session.setAttribute("username",i.getString("username"));
     session.setAttribute("did",i.getString("did"));
%>
      <script type='text/javascript'>
          window.alert("Donor Login Successful...!!");
          window.location="DonorHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Donor Login Failed..!!");
          window.location="Donor.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>