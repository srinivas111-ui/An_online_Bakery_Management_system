 <%@ page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
<%
String firstName = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("number");
String password = request.getParameter("pwd");
String gender = request.getParameter("Gender");
java.util.Date dt=new java.util.Date();
String date=dt.toString();
out.println(firstName);
out.println(email);
out.println(mobile);
out.println(password);
out.println(gender);
out.println(gender);
try{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","Manager");
    PreparedStatement preparedStatement = con.prepareStatement("insert into adminreg_details values(?,?,?)");
        preparedStatement.setString(1,email);
 preparedStatement.setString(2,password);
        preparedStatement.setString(3,firstName);
        preparedStatement.executeUpdate();
        out.print("data inserted successfully");
        if(con!=null)
            out.print("Database connected successfully");
    con.close();
    }
    catch(Exception e)
    {
    out.print(e);
    }
%>