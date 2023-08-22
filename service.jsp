<%@ page import="java.util.*,java.sql.*"%>
<%
	out.print("<body bgcolor='dodgerblue'><table><tr><td><h1 align='center'>Admin products supply enquiry</h1></td></tr><tr><td>");
	Date da=new Date();
	String dat=da.toString();
	try
	{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
		PreparedStatement pst=con.preparestatement("select * from Buy_detail where date_time=dat");
		Resultset rs=pst.executeQuery();
		out.print("<table align='center'><tr><td><h3>product</h3></td>)
		while(rs.next())
		{
			out
		}
	}