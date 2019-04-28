

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%

int oid=Integer.parseInt(request.getParameter("oid"));
session.setAttribute("oid", oid);
if(oid>0)
{   
%>
<script>
    alert("Order added");
    location.href="PlaceOrder.jsp";
</script>
<%}%>