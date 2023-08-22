<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String pwd1 = request.getParameter("Password");
%>

<jsp:include page="Login.html"/>
<%
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
    PreparedStatement preparedStatement = con.prepareStatement("select * from adminreg_details where email=? and password=?");
    preparedStatement.setString(1,email);
    preparedStatement.setString(2,pwd1);
    ResultSet rs=preparedStatement.executeQuery();
    if(rs.next())
    {
        out.print("successfullly loign...."); 
            out.print("Hey.... ! "+email);
            response.sendRedirect("admin.jsp");
    }
    else
    {
        response.sendRedirect("adminregister.html");
    }
    con.close();

}
catch(Exception e)
{
out.print(e);
}
%>