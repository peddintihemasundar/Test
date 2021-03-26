
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.DBCon" %>
<%
    String t1=request.getParameter("pid");
    String t2=request.getParameter("name");
    String t3=request.getParameter("email");
    String t4=request.getParameter("mobile");
    String t5=request.getParameter("address");
    String t6=request.getParameter("gender");
    String t7=request.getParameter("username");
    String t8=request.getParameter("password");
    String t9=request.getParameter("hsp");
    try
    {
        Connection con=DBCon.getCon();
        Statement st=con.createStatement();
        int i=st.executeUpdate("insert into patient values('"+t1+"','"+t2+"','"+t3+"','"+t4+"','"+t5+"','"+t6+"','"+t7+"','"+t8+"','"+t9+"')");
        if(i>0)
        {
            response.sendRedirect("Patient.jsp?msg=Register Sucess");
        }
        else
        {
         response.sendRedirect("Patient.jsp?msg=Register Fail");   
        }
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>