<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.bundle.min.js"></script>

</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../index.jsp">Makalem.com</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="../index.jsp">Anasayfa</a></li>
				<li class="active"><a href="makaleler.jsp">Makaleler</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="SecimYap.jsp"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
		</div>
	</nav>

	<!-- Page Content -->
	<div class="container">
		<%
			String driver = "com.mysql.jdbc.Driver";
			String connectionUrl = "jdbc:mysql://localhost:3306/";
			String database = "makale_sistemi?useSSL=false";
			String userid = "root";
			String password = "squad1453";
			try {
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
		<div class="row">
			<div class="col-md-8">
				<h1 class="my-4">Makaleler</h1>
				<%
					try {
						connection = DriverManager.getConnection(connectionUrl + database, userid, password);
						statement = connection.createStatement();
						String sql = "select * from beklenen_makaleler";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
				<!-- Blog Post -->
				<div class="col-md-8">
					<div class="card-body">
						<h2 class="card-title"><%=resultSet.getString("makale_baslik")%></h2>
						<p class="card-text"><%=resultSet.getString("makale_icerik")%></p>
						<a href="makaleOku.jsp?id=<%=resultSet.getString("id")%>" class="btn btn-primary">Okumaya
							Devam... &rarr;</a>
					</div>
					<div class="card-footer text-muted">
						Tarih: <%=resultSet.getString("makale_tarih")%><br>
						Yazar:<a href="#"><%=resultSet.getString("makaler_yazari")%></a>
					</div>
				</div>
			</div>
			<%
				}
					connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
	</div>
	<!-- /.container -->
</body>
</html>