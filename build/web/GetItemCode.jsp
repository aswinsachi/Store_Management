<%-- 
    Document   : GetFees
    Created on : Mar 25, 2017, 10:17:36 AM
    Author     : Sign X Soulution
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
    <script>
        function fun()
        {
            document.getElementById("itemcode").value=" ";
        }
    </script> 
<%
String itemcode=request.getParameter("icode");
System.out.print("itemcoe"+itemcode);
String sql="select * from item where itemcode='"+itemcode+"'";
ResultSet rs=obj.Retrievedata(sql);

if(rs.next())
{
%>
<p  style="color: red;">Item Code Duplication!!!Please Choose another Code.....</p>
<%}%>