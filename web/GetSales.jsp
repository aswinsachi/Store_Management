

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String key=request.getParameter("key");
String sql="select * from billing as b join item as i where (UPPER(b.billdate) LIKE UPPER('%"+key+"%')  OR UPPER(i.itemname) LIKE UPPER('%"+key+"%')) and i.itemid=b.itemid";
%>
 <table border="1" class="table table-condensed"  style="border-collapse: separate;margin-left: 20px;column-width:100px">
		<thead>
					
		       <tr>
                                  <th>BILL NO.</th>
                                  <th>ITEM NO.</th>
                                  <th>BILL DATE</th>
                                  <th>ITEM CODE</th>
                                  <th>ITEM NAME</th>
                                  <th>PRICE</th>
                                  <th>NO. ITEMS</th>
                                  <th>TOTAL AMOUNT</th> 
                       </tr>
						
							
					
		</thead>
                                        
                         <%
                                                
                                            
                                            
                                             ResultSet rs=obj.Retrievedata(sql);

                                             while(rs.next()){
                                                 int itemid=rs.getInt("itemid");
                                                 String itemcode=rs.getString("itemcode");
                                                String itemname=rs.getString("itemname");
                                                 float price=rs.getFloat("price");
                                                 int minlevel=rs.getInt("minlevel");
                                                 int billid=rs.getInt("idbill");
                                                 float tot=rs.getFloat("totprice");
                                                 String bdate=rs.getString("billdate");
                                                 int noi=rs.getInt("no_items");
                                                 int bid=rs.getInt("billid");
                                                %>
					<tbody>
                                            <tr>
                                                 <td><%=bid%></td>
                                                <td><%=billid%>
                                                </td>
                                                <td><%=bdate%></td>
                                                    <td>
                                                        
                                                        <%=itemcode%></td>
                                           <td><%=itemname%></td>
                                <td><%=price%></td>
                                <td><%=noi%></td>
                                <td><%=tot%></td>                             
                        </tr>

                                                
					</tbody>
                                
                                        <%
                                             }
                                        
                                        %>
                                        
				</table>