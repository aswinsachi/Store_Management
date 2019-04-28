
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<jsp:useBean id="obj1" class="DbConnect.MailUtil"></jsp:useBean>
<%
boolean i=false;
 int o=(Integer)session.getAttribute("oid");
 String sql="SELECT * FROM orders WHERE orderid=(SELECT MAX(orderid) FROM orders)";
 ResultSet rs=obj.Retrievedata(sql);
 if(rs.next()){
     int ven=rs.getInt("vendorid");
     String sql1="SELECT email FROM vendor where vendorid='"+ven+"'";
    ResultSet rs1=obj.Retrievedata(sql1);
     if(rs1.next())
     {
    String email=rs1.getString("email"); 
    System.out.print("eeeeeeemaaaaaiiiiillll"+email);
    String[] rec  = new String[1];
    rec[0] =email;     
     i=obj1.sendMail(rec, rec, "Order Received from MINI stores", "Please check Details");
 }
 }
if(i==true)
{   
%>
<script>
    alert("Email Sent ");
    location.href="StoreKeeperHome.jsp";
</script>
<%}
else if(i==false){
%>
<script>
location.href="StoreKeeperHome.jsp";
</script>
<%}

%>