
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%


String username=request.getParameter("username");
String password=request.getParameter("password");


String sql="select * from vendor where username='"+username+"' and password='"+password+"'";
ResultSet i=obj.Retrievedata(sql);
if(i.next())
{
   int idvendor=i.getInt("vendorid");
   session.setAttribute("vendorid", idvendor);
%>
<script>
    alert("**Login Successful**");
    location.href="VendorHome.jsp";
</script>
<%}else{%>
<script>
    alert("**Login failes**");
    location.href="vendorLogin.jsp";
</script>
<%}%>