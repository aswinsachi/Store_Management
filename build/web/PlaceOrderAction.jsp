

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
int oid=Integer.parseInt(request.getParameter("orderid"));
String odate=request.getParameter("odate");
int vendor=Integer.parseInt(request.getParameter("vendor"));
int itemname=Integer.parseInt(request.getParameter("itemname"));
int itemno=Integer.parseInt(request.getParameter("itemno"));
//String sql1="insert into orderMaster values(null,'"+orderid+"')";
//int i1=obj.ExecuteQueriess(sql1);
String sql="insert into orders values(null,'"+vendor+"','"+itemname+"','"+itemno+"','"+odate+"','"+oid+"',0,curdate())";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Order placed Successfully");
    location.href="PlaceOrder.jsp";
</script>
<%}%>