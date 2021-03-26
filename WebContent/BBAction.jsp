
<%@page import="com.database.Queries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String bbid=request.getParameter("bbid");
String name=request.getParameter("name");
String location=request.getParameter("location");

try{
 String qury="insert into bank values('"+bbid+"','"+name+"','"+location+"')";   
   int i=Queries.getExecuteUpdate(qury);
   if(i>0){
       %>
       <script type="text/javascript">
           window.alert("Added Successfully...!!!");
           window.location="AddBloodBank.jsp";
       </script>
       
       <%
   }else{
%>
       <script type="text/javascript">
           window.alert("Adding Failed...!!!");
           window.location="AddBloodBank.jsp";
       </script>
       
       <%
}
    
    
}catch(Exception e){
    out.println(e);
}


%>