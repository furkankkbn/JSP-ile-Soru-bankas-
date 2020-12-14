<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<title>Makale İşlemleri</title>
<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Page level plugin CSS-->
<link href="../vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="../css/sb-admin.css" rel="stylesheet">
</head>
<body id="page-top">

	<nav class="navbar navbar-expand navbar-dark bg-dark static-top">

		<a class="navbar-brand mr-1" style="color: white;"
			href="../AdminPaneli/admin_paneli.jsp">ADMİN PANELİ</a>

		<form
			class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">

		</form>

		<!-- Navbar -->
		<ul class="navbar-nav ml-auto ml-md-0">
			<li class="nav-item dropdown no-arrow"><a
				class="nav-link dropdown-toggle" href="#" id="userDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> <i class="fas fa-user-circle fa-fw"></i>
			</a>
				<div class="dropdown-menu dropdown-menu-right"
					aria-labelledby="userDropdown">
					<a class="dropdown-item" href="../Editor/SignUp.jsp">Şifremi
						Değiştir</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#" data-toggle="modal"
						data-target="#logoutModal">Çıkış</a>
				</div></li>
		</ul>

	</nav>

	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="sidebar navbar-nav">
			<li class="nav-item"><a class="nav-link"
				href="../AdminPaneli/girisKayitlari.jsp"> <span>Giriş
						Kayıtları</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../AdminPaneli/makaleler.jsp"> <span>Yayınlanan
						Makaleler</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../AdminPaneli/yeni_makaleler.jsp"> <span>Yeni
						Makaleler</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../AdminPaneli/makale_islemleri.jsp"> <span>Makale
						İşlemleri</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../AdminPaneli/yorum_listeleri.jsp"> <span>Yorum
						Listeleri</span>
			</a></li>

		</ul>
	</div>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Emin misin?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Çıkış Yapmak İstediğine Emin misin?</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">İptal</button>
					<a class="btn btn-primary" href="../index.jsp">Çıkış</a>
				</div>
			</div>
		</div>
	</div>

	<div id="content-wrapper">

		<div class="container-fluid">
			<%
				String id = request.getParameter("id");

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
			<!-- Page Content -->
			<div class="container">
				<div class="row">
					<div class="col-md-8">
						<h1 class="my-4">Makaleler</h1>
						<%
							try {
								connection = DriverManager.getConnection(connectionUrl + database, userid, password);
								statement = connection.createStatement();
								String sql = "select * from beklenen_makaleler where id=" + id;
								resultSet = statement.executeQuery(sql);
								while (resultSet.next()) {
						%>
						<!-- Blog Post -->
						<div class="card mb-4">
							<div class="card-body">

								<h2 class="card-title"><%=resultSet.getString("makale_baslik")%></h2>
								<p class="card-text"><%=resultSet.getString("makale_icerik")%></p>
							</div>
							<div class="card-footer text-muted"><%=resultSet.getString("makale_tarih")%>
								<a href="#"><%=resultSet.getString("makaler_yazari")%></a>
								<form action="../Hakem_ata" method="post">
									<input type="submit" value="Hakem ata" class="form-control rounded-0">
								</form>
							</div>
						</div>
					</div>
					<%
						}
					%>
				</div>
			</div>

			<%
				connection.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
			%>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugin JavaScript-->
	<script src="../vendor/chart.js/Chart.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="../js/sb-admin.min.js"></script>
</body>
</html>