

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String req=request.getParameter("req");
String ins="insert into ordermaster values(null,curdate())";
int ii=obj.ExecuteQueriess(ins);
int oid=0;
String s="select max(idordermaster) as oid from ordermaster";
ResultSet rs=obj.Retrievedata(s);
if(rs.next())
{
    
oid=rs.getInt("oid");
%>
<input id="oid" name="oid"  type="text" value="<%=oid%>" class="form-control input-md" required>
 <%}%>