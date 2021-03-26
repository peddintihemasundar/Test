

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String pid=request.getParameter("pid");
String pname=request.getParameter("pname");
String did=request.getParameter("did");
String bname=request.getParameter("bname");
String bgroup=request.getParameter("bgroup");

try{
 String qury="insert into request values(null,'"+pid+"','"+pname+"','"+did+"','"+bname+"','"+bgroup+"',now(),'waiting','waiting')";   
   int i=Queries.getExecuteUpdate(qury);
   if(i>0){
       %>
       <script type="text/javascript">
           window.alert("Request Sent Successfully...!!!");
           window.location="AvailableBlood.jsp";
       </script>
       
       <%
   }else{
%>
       <script type="text/javascript">
           window.alert("Request Sending Failed...!!!");
           window.location="AvailableBlood.jsp";
       </script>
       
       <%
}
    
    
}catch(Exception e){
    out.println(e);
}


%>