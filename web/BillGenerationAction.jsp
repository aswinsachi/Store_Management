<%-- 
    Document   : AddLocationAction
    Created on : Mar 8, 2017, 12:40:52 PM
    Author     : Sign X Soulution
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
float tprice=Float.parseFloat(request.getParameter("tprice"));
String bdate=request.getParameter("bdate");
int bid=Integer.parseInt(request.getParameter("billid"));
int itemid=Integer.parseInt(request.getParameter("itemid"));
int itemno=Integer.parseInt(request.getParameter("itemno"));
//String sql1="insert into orderMaster values(null,'"+orderid+"')";
//int i1=obj.ExecuteQueriess(sql1);
int sval=0;
int fstock=0;
String sql="insert into billing values(null,'"+itemid+"','"+tprice+"','"+bdate+"','"+itemno+"','"+bid+"')";
int i=obj.ExecuteQueriess(sql);

String sql1="select * from item where itemid='"+itemid+"'";
ResultSet r=obj.Retrievedata(sql1);
if(r.next())
{
  sval=r.getInt("stockval");
  fstock=sval-itemno;
 
}
 // String mm="update item set stockval='"+fstock+"' where itemid='"+itemid+"'";
  //int ii=obj.ExecuteQueriess(mm);
if(fstock==0 || fstock<0)
{   
%>
<script>
    alert("No Available Stock");
    location.href="StockKeeperHome.jsp";
</script>
<%}else{
String sql2="update item set stockval=stockval-"+itemno+" where itemid='"+itemid+"'";
int j=obj.ExecuteQueriess(sql2);

%>

<script>
    alert("Bill generated!!!");
    location.href="BillGeneration.jsp";
</script>
<%}%>