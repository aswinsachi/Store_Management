<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
int bid=Integer.parseInt(request.getParameter("bid"));
session.setAttribute("bid", bid);
if(bid>0)
{   
%>
<script>
    alert("Bill added");
    location.href="BillGeneration.jsp";
</script>
<%}%>