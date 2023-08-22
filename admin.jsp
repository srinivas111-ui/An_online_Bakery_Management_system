<%@ page import="java.util.*,java.sql.*"%>
<%
java.util.Date d=new java.util.Date();
	String date=d.toString();

out.print("<body bgcolor='orange'>");
out.print("<table align='center' bgcolor='dodgerblue' cellspacing='20' cellpadding='20'><tr><td><h3 align='center'>User Register details</h3></td></tr><tr><td>");
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
	PreparedStatement pst=con.prepareStatement("select * from buy_details");
	PreparedStatement pst1=con.prepareStatement("select * from reg_details");
	ResultSet rs=pst.executeQuery();
    ResultSet rs1=pst1.executeQuery();
	//pst.setString(1,date);
		while(rs1.next())
	{
		out.print(rs1.getString(1));
	%>
</td><td>
	<% out.print(rs1.getString(3));
	%>
</td><td>
	<%
	out.print(rs1.getString(4));
%>
</td><td>
	<%
	out.print(rs1.getString(6));
%>
</td><td>
	<%
%>
</td></tr><tr><td>
	<%
	}
%>
<h3 align="center">BOOKED PRODUCTS</h3></td></tr><tr><td>
	<%
	while(rs.next())
	{
		out.print(rs.getString(8));
	%>
</td><td>
	<% out.print(rs.getString(9));
	%>
</td><td>
	<%
	out.print(rs.getString(10));
%>
</td><td>
	<%
	out.print(rs.getString(4));
%>
</td><td>
	<%
	out.print(rs.getString(2));
%>
</td></tr><tr><td>
	<%
	}

}
catch(Exception e)
{
	e.printStackTrace();
}
%>