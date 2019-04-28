<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String itemcode=request.getParameter("itemcode");
String itemname=request.getParameter("itemname");
int minlevel=Integer.parseInt(request.getParameter("minlevel"));
float price=Float.parseFloat(request.getParameter("price"));
 int itemid=Integer.parseInt(request.getParameter("itemid"));
  int sval=Integer.parseInt(request.getParameter("sval"));
String sql="update item set itemcode='"+itemcode+"',itemname='"+itemname+"',price='"+price+"',minlevel='"+minlevel+"',stockval='"+sval+"' where itemid='"+itemid+"'";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Item updated Successfully");
    location.href="stock.jsp";
</script>
<%}%>