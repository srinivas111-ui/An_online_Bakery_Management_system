<%@ page import="java.sql.*" %>
<body style="background-image:url(https://images7.alphacoders.com/434/thumb-1920-434434.jpg);width=400px;">
</body>
<%
String email=(String)session.getAttribute("Individual");
String pwd=(String)session.getAttribute("pwd");
try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
PreparedStatement pst=con.prepareStatement("select * from buy_details where email=?");
PreparedStatement pst1=con.prepareStatement("select * from reg_details where email=?");
PreparedStatement pst2=con.prepareStatement("select * from cart where email=?");
pst1.setString(1,email);
//pst1.setString(2,pwd);
ResultSet rs1=pst1.executeQuery();
out.print("<table align='center' width='50%'><tr><td><h3>username</h3></td><td></td><td><h3>Password</h3></td><td></td><td><h3>Email</h3></td><td><a href='log.html'><button align='center' style='background-color: dodgerblue;width: 70px;height: 30px; border: 1px;border-radius: 10px;'>Log out</button></td><td><a href='Main.html'><button type='submit'  style='background-color: dodgerblue;width: 70px;height: 30px; border: 1px;border-radius: 10px;'>Home page</button></a></td></tr></table>");
while(rs1.next())
{
String u=rs1.getString(1);
String v=rs1.getString(2);
String w=rs1.getString(3);
out.print("<table align='center' style='background-color: dodgerblue;width: 70px;height: 30px; border: 1px;border-radius: 10px;' cellspacing='20' style='background-color: dodgerblue;' cellpadding='1'><tr><td><h5>username</h5></td><td>  "+u+"</td></tr><tr><td><h5>Password         </h5></td><td>"+v+"</td></tr><tr><td><h5>Email      </h5></td><td>"+w+"</td></tr></table><br><br>");
}
pst.setString(1,email);
//pst.setString(2,pwd);
ResultSet rs=pst.executeQuery();
out.print("<table align='center' style='background-color: dodgerblue;width: 500px;height: 30px; border: 1px solid black;border-radius: 10px;' cellspacing='30'><tr><td>Product</td><td>Weight</td><td>Quantity</td><td>Date of Buy</td></tr>");
      while(rs.next())
      {
      %>
      <table align="center" cellspacing="10" cellpadding="10" style="background-color: dodgerblue;border: 1px solid white;border-radius: 10px;">
         <tr align='center' align="justify">
            <td>
               <%
  out.print(rs.getString(8));%></td><td>
   <%
   out.print(rs.getString(9));%></td><td><%
      out.print(rs.getString(10));%>
</td>
<td>
   <%
   out.print(rs.getString(4));
%>
</tr><br>
<%
      }
    // Add more cart items as needed
       pst2.setString(1,email);
      ResultSet rs2=pst2.executeQuery();
       out.print("<table align='center'><tr><td><h3 >Cart</h3></td></tr></table>");
      out.print("<br><table align='center' style='background-color: dodgerblue;width: 500px;height: 30px; border: 1px solid black;border-radius: 10px;' cellspacing='30'><tr><td>Product</td><td>price</td><td></td><td></td></tr><br>");
     
      while(rs2.next())
      {
      %>

      <table align="center" cellspacing="10" cellpadding="10" style="background-color: dodgerblue;border: 1px solid white;border-radius: 10px;">
         <tr align='center' align="justify">
            <td><br>
               
   <%
   out.print(rs2.getString(2));%></td><td><%
      out.print(rs2.getString(3));%>
</td>
</tr>
<%
      }
     

}
catch(SQLException e)
{
   out.println(e.getMessage());
}
   %> 

