<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@page import="java.sql.*,java.util.*"%>
<%
	String uye_id = request.getParameter("id");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/makale_sistemi?useSSL=false", "root", "squad1453");
		Statement st = conn.createStatement();
		int i = st.executeUpdate("DELETE FROM beklenen_makaleler WHERE id=" + uye_id);
		out.println("Data Deleted Successfully!");
		response.sendRedirect("Makalelerim.jsp");
	} catch (Exception e) {
		System.out.print(e);
		e.printStackTrace();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>