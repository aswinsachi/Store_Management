<%-- 
    Document   : GetFees
    Created on : Mar 25, 2017, 10:17:36 AM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String req=request.getParameter("req");
String ins="insert into billingmaster values(null,curdate())";
int ii=obj.ExecuteQueriess(ins);
int oid=0;
String s="select max(idbillingmaster) as bid from billingmaster";
ResultSet rs=obj.Retrievedata(s);
if(rs.next())
{
    
oid=rs.getInt("bid");
%>
<input id="bid" name="bid"  type="text" value="<%=oid%>" class="form-control input-md" required>
 <%}%>