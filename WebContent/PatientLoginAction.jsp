
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try{

   
    String uname=request.getParameter("uname");
    String pwd=request.getParameter("pwd");
    
    String query="select * from patient where username='"+uname+"'and password='"+pwd+"'";
    ResultSet i=Queries.getExecuteQuery(query);
    if(i.next()){
       
       
       session.setAttribute("username",i.getString("username"));
        session.setAttribute("pid",i.getString("pid"));
     
%>
      <script type='text/javascript'>
          window.alert("Patient Login Successful...!!");
          window.location="PatientHome.jsp";
      </script>
      <%

    }else{
    
%>
      <script type='text/javascript'>
          window.alert(" Patient Login Failed..!!");
          window.location="Patient.jsp";
      </script>
      <%
}
}catch(Exception e){
    out.println(e);
}



%>