<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String itemcode=request.getParameter("itemcode");
String itemname=request.getParameter("itemname");
int stock=Integer.parseInt(request.getParameter("stockval"));
int minlevel=Integer.parseInt(request.getParameter("minlevel"));
float price=Float.parseFloat(request.getParameter("price"));
String ss="select * from item where itemcode='"+itemcode+"'";
ResultSet rr=obj.Retrievedata(ss);
if(rr.next())
{
    %>
    <script>
        alert("ItemCode Exists!!!");
        location.href='AddItems.jsp';
    </script>
<%
    
}
else{
String sql="insert into item values(null,'"+itemcode+"','"+itemname+"','"+price+"','"+stock+"','"+minlevel+"')";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Item Added Successfully");
    location.href="AddItems.jsp";
</script>
<%}}%>