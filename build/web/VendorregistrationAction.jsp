<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%

int flag=0;
String name=request.getParameter("fname");
String uname=request.getParameter("username");
String pass=request.getParameter("password");
String email=request.getParameter("email");
String phone=request.getParameter("phone");




String sql1="select * from vendor where username='"+uname+"'";
ResultSet u=obj.Retrievedata(sql1);
if(u.next()){
    flag=1;
    %>
    <script>
    alert("Vendor username Registered already ");
    
</script>

<%}
String sql2="select * from vendor where phone='"+phone+"'";
ResultSet p=obj.Retrievedata(sql2);
if(u.next()){
    flag=1;
    %>
    <script>
    alert("Vendor Phone Number Registered already ");
    
</script>

}




String sql="insert into vendor values(null,'"+name+"','"+uname+"','"+pass+"','"+email+"','"+phone+"')";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Vendor Registered Successfully");
    location.href="vendorLogin.jsp";
</script>
<%}%>