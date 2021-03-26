
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String query="select * from doctor where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
       
       
       session.setAttribute("username",i.getString("username"));
     
%>
      <script type='text/javascript'>
          window.alert("Doctor Login Successful...!!");
          window.location="DoctorHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Doctor Login Failed..!!");
          window.location="Doctor.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>