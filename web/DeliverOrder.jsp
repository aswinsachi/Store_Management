<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%


int orderid=Integer.parseInt(request.getParameter("orderid"));


String sql="update  orders set status=1,del_date=curdate() where orderid='"+orderid+"'";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Order Delivered Successfully");
    location.href="VendorViewOrders.jsp";
</script>
<%}%>