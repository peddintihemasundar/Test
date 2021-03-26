

<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String rid=request.getParameter("rid");
String did=request.getParameter("did");

try{
 String qury="update request set status='Accepted',adate=now() where id='"+rid+"'";   
   int i=Queries.getExecuteUpdate(qury);
   if(i>0){
    
Queries.getExecuteUpdate("update profile set donated='Donated' where did='"+did+"'");
       %>
       <script type="text/javascript">
           window.alert("Request Accepted Successfully...!!!");
           window.location="ViewBllodRequest.jsp";
       </script>
       
       <%
   }else{
%>
       <script type="text/javascript">
           window.alert("Request Accept Failed...!!!");
           window.location="ViewBllodRequest.jsp";
       </script>
       
       <%
}
    
    
}catch(Exception e){
    out.println(e);
}


%>