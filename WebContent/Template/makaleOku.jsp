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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="../index.jsp">Makalem.com</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="../index.jsp">Anasayfa</a></li>
				<li><a href="makaleler.jsp">Makaleler</a></li>
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
			<!-- Post Content Column -->
			<%
					try {
						connection = DriverManager.getConnection(connectionUrl + database, userid, password);
						statement = connection.createStatement();
						String sql = "select * from beklenen_makaleler";
						resultSet = statement.executeQuery(sql);
						while (resultSet.next()) {
				%>
			<div class="col-lg-8">
				<!-- Title -->
				<h1 class="mt-4"><%=resultSet.getString("makale_baslik")%></h1>
				<!-- Author -->
				<p class="lead">
					by<a href="#"><%=resultSet.getString("makaler_yazari")%></a>
				</p>
				<hr>
				<!-- Date/Time -->
				<p><%=resultSet.getString("makale_tarih")%></p>
				<hr>
				<!-- Preview Image -->
				<img class="img-fluid rounded" src="http://placehold.it/900x300"
					alt="">
				<hr>
				<!-- Post Content -->
				
				<p><%=resultSet.getString("makale_icerik")%></p>

				<hr>

				<!-- Comments Form -->
				<div class="card my-4">
					<h5 class="card-header">Yorum yap:</h5>
					<div class="card-body">
						<form>
							<div class="form-group">
								<textarea class="form-control" rows="3"></textarea>
							</div>
							<button type="submit" class="btn btn-primary">Gönder</button>
						</form>
					</div>
				</div>

				<!-- Single Comment -->
				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Kullanıcı Adı</h5>
						Yorum
					</div>
				</div>

				<!-- Comment with nested comments -->
				<div class="media mb-4">
					<img class="d-flex mr-3 rounded-circle"
						src="http://placehold.it/50x50" alt="">
					<div class="media-body">
						<h5 class="mt-0">Kullanıcı Adı</h5>
						Yorum
						<div class="media mt-4">
							<img class="d-flex mr-3 rounded-circle"
								src="http://placehold.it/50x50" alt="">
							<div class="media-body">
								<h5 class="mt-0">Kullanıcı Adı</h5>
							</div>
						</div>

					</div>
				</div>

			</div>
			<%
				}
						connection.close();
					}catch(

				Exception e)
				{
					e.printStackTrace();
				}
			%>
			<!-- Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Search Widget -->
				<div class="card my-4">
					<h5 class="card-header">Search</h5>
					<div class="card-body">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-secondary" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>

				<!-- Categories Widget -->
				<div class="card my-4">
					<h5 class="card-header">Categories</h5>
					<div class="card-body">
						<div class="row">
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">Web Design</a></li>
									<li><a href="#">HTML</a></li>
									<li><a href="#">Freebies</a></li>
								</ul>
							</div>
							<div class="col-lg-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#">JavaScript</a></li>
									<li><a href="#">CSS</a></li>
									<li><a href="#">Tutorials</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- /.row -->

	</div>
	<!-- /.container -->

	<!-- Footer -->
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">Copyright &copy; Your
				Website 2019</p>
		</div>
		<!-- /.container -->
	</footer>
</body>
</html>