

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%


String username=request.getParameter("username");
String password=request.getParameter("password");
String type=request.getParameter("type");
if(type.equals("StoreKeeper")){
String sql="select * from register where username='"+username+"' and password='"+password+"' and type='"+type+"'";
ResultSet i=obj.Retrievedata(sql);
if(i.next())
{
    session.setAttribute("logid", i.getInt("idregister"));
%>
<script>
    alert("**Login Successful**");
    location.href="StoreKeeperHome.jsp";
</script>
<%}else{%>
<script>
    alert("**Username or Password is incorrect**");
    location.href="loginn.html";
</script>

<%}}else if(type.equals("Accountant")){
   
    String sql="select * from register where username='"+username+"' and password='"+password+"' and type='"+type+"'";
ResultSet i=obj.Retrievedata(sql);
if(i.next())
    
{  session.setAttribute("logid", i.getInt("idregister"));%>
<script>
     alert("**Login Successful**");
    location.href="AccountantHome.jsp";
</script>
<%}
else{%>
<script>
    alert("**Username or password is incorrect**");
    location.href="loginn.html";
</script><%
}} else {
%>
<script>
    alert("enter the type");
    location.href="loginn.html";
</script><%
}

//else if(type.equals("Vendor")){
   
   // String sql="select * from vendor where username='"+username+"' and password='"+password+"'";
//ResultSet i=obj.Retrievedata(sql);
//if(i.next())
    
//{  session.setAttribute("logid", i.getInt("vendorid"));%>
<!--<script>
     alert("**Login Successful**");
    location.href="VendorHome.jsp";
</script>
<%--}else{%>
<script>
    alert("**Login Failed**");
    location.href="loginn.html";
</script>
--%>}}
%>
