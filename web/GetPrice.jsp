<%-- 
    Document   : GetFees
    Created on : Mar 25, 2017, 10:17:36 AM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
int itemid=Integer.parseInt(request.getParameter("itemid"));
int itemno=Integer.parseInt(request.getParameter("itemno"));
String sql="select * from item where itemid='"+itemid+"'";
ResultSet rs=obj.Retrievedata(sql);
float price=0;
if(rs.next())
{
     price=rs.getFloat("price");
     float tot=price*itemno;


%>
<input id="textinput" name="tprice" type="text" value="<%=tot%>"  class="form-control input-md" required>
<%}%>