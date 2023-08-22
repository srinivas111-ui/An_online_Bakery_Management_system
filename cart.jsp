<%@ page import="java.util.*,java.sql.*"%>
<%
	String email=(String)session.getAttribute("Individual");
	String p=request.getParameter("pname");
	String pr=request.getParameter("price");
	String pq=(String)session.getAttribute("Individual");
	try
	{
	Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
    if(pq.equals("") || pq.equals(" "))
    {
    	%>
        <jsp:forward page="Login.html" />
            <%
    }
    else
    {
    PreparedStatement preparedStatement = con.prepareStatement("insert into cart values(?,?,?)");
    preparedStatement.setString(1,email);
    preparedStatement.setString(2,p);
    preparedStatement.setString(3,pr);
    preparedStatement.executeUpdate();
}
    con.close();
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
