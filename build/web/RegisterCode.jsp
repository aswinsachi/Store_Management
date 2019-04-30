<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet" %>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%

    int flag = 0;
    String name = request.getParameter("fname");
    String uname = request.getParameter("username");
    String pass = request.getParameter("password");
    String email = request.getParameter("email");
    String phone = request.getParameter("phone");
    String type = request.getParameter("type");
    String forget =request.getParameter("forget");
%>
<%
    if (type.equals("StoreKeeper")) {
        String sql1 = "select * from register where username='" + uname + "' and   type='" + type + "'";
        ResultSet j = obj.Retrievedata(sql1);

        if (j.next()) {
 flag = 1;
%>
<script>
    alert("**alraedy registered username**");
   
</script>


<%}
    String sql2 = "select * from register where email='" + email + "' and  type='" + type + "'";
    ResultSet s = obj.Retrievedata(sql2);
    if (s.next()) { 
flag = 1;%>
<script>
    alert("**already registered email**");
    
</script>

<%}

    String sql3 = "select * from register where phone='" + phone + "' and   type='" + type + "'";
    ResultSet v = obj.Retrievedata(sql3);
    if (v.next()) {
flag = 1;%>
<script>
    alert("**already registered phone number**");
    
</script>

<%}
} else if (type.equals("Accountants")) {
    String sql1 = "select * from register where username='" + uname + "' and   type='" + type + "'";
    ResultSet j = obj.Retrievedata(sql1);

    if (j.next()) {
 flag = 1;
%>
<script>
    alert("**alraedy registered username**");
   
</script>
<%}
    String sql2 = "select * from register where email='" + email + "' and  type='" + type + "'";
    ResultSet s = obj.Retrievedata(sql2);
    if (s.next()) {
 flag = 1;
%>
<script>
    alert("**already registered email**");
   
</script>
<%}

    String sql3 = "select * from register where phone='" + phone + "' and  type='" + type + "'";
    ResultSet v = obj.Retrievedata(sql3);
    if (v.next()) {
 flag = 1;
%>
<script>
    alert("**already registered phone number**");
   
</script>


<%}
    }
    if (flag == 1) {%>
<script>
   
    location.href = "loginn.html";
</script>


<%}
    if (flag == 0) {

        String sql = "insert into register values(null,'" + name + "','" + uname + "','" + pass + "','" + email + "','" + phone + "','" + type + "','"+forget+"')";
        int i = obj.ExecuteQueriess(sql);
        if (i > 0) {
%>
<script>
    alert("User Registered Successfully");
    location.href = "loginn.html";
</script>
<%}
    }%>