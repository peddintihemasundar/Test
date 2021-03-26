

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.database.Queries"%>
<%
try{

   
    String did=request.getParameter("did");
    String username=request.getParameter("name");
    String bloodgroup=request.getParameter("bloodgroup");
    String smoking=request.getParameter("smoking");
    String alcohol=request.getParameter("alcohol");
    String bbid=request.getParameter("bbid");
       
        String query1="insert into profile values('"+did+"','"+username+"','"+bloodgroup+"','"+smoking+"','"+alcohol+"','waiting','"+bbid+"')";
        
 
        int ii=Queries.getExecuteUpdate(query1);
        if(ii>0)
        {
          %>
          <script type="text/javascript">
              window.alert("Profile Updated Successfully...!!!");
              window.location="UpdateProfile.jsp";
              </script>
          
          <%
        }else{
%>
          <script type="text/javascript">
              window.alert("Profile Updation Failed...!!!");
              window.location="UpdateProfile.jsp";
              </script>
          
          <%
}
    }catch(Exception e){
     out.println(e);   
    }%>