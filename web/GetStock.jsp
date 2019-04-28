

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<jsp:useBean id="obj" class="DbConnect.DBClass"></jsp:useBean>
<%
String key=request.getParameter("key");
String sql="SELECT * from item  WHERE (UPPER(itemname) LIKE UPPER('%"+key+"%') OR UPPER(itemcode) LIKE UPPER('%"+key+"%'))";
%>
<table border="1" class="table table-condensed"  style="border-collapse: separate;margin-left: 20px;column-width:100px">
					<thead>
					
							
							 <tr>
                                       <th>ITEM CODE</th>
                                   <th>ITEM NAME</th>
                                  <th>PRICE</th>
                                  <th>MIN LEVEL</th>
                                    <th>Edit</th>
                                   <th>Delete</th>
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
                                                 
                                                %>
					<tbody>
						<tr>
                                                    <td>
                                                        <%=itemcode%></td>
                                           <td><%=itemname%></td>
                                <td><%=price%></td>
                                <td><%=minlevel%></td>
                                <td><a href="EditItem.jsp?itemid=<%=itemid%>">Edit</td>                                
                                    <td><a href="RemoveItem.jsp?itemid=<%=itemid%>">Remove</td>
                                 
                              
                               
                                   
                        </tr>

                                                
					</tbody>
                                
                                        <%
                                             }
                                        
                                        %>
                                        
				</table>