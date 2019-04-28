<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%


int itemid=Integer.parseInt(request.getParameter("itemid"));


String sql="delete from item where itemid='"+itemid+"'";
int i=obj.ExecuteQueriess(sql);
if(i>0)
{   
%>
<script>
    alert("Item Removed Successfully");
    location.href="stock.jsp";
</script>
<%}%>