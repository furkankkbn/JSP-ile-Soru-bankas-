<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<meta charset="UTF-8">
<title>Hoca Paneli</title>
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
			href="../AdminPaneli/admin_paneli.jsp">Yazar PANELİ</a>

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
					<a class="dropdown-item" href="#">Şifremi Değiştir</a>
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
				href="../Yazar/YazarPanel.jsp"> <span>Makale Ekle</span>
			</a></li>
			<li class="nav-item"><a class="nav-link"
				href="../Yazar/Makalelerim.jsp"> <span>Makalelerim</span>
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

	<!-- Makale Yukle -->
	<form method="post" action="../makale_ekle">

		<div class="form-group">
			<label for="makale_baslik">Makale Başlık</label> <input type="text"
				class="form-control rounded-0" id="makale_baslik"
				name="makale_baslik"> <br> <label for="makale_icerik">Makale
				İçerik</label>
			<textarea class="form-control rounded-0" id="makale_icerik"
				name="makale_icerik" rows="10"></textarea>
			<br> <label class="my-1 mr-2" for="inlineFormCustomSelectPref">İlgi
				Alanı</label> <select class="custom-select my-1 mr-sm-2" id="secenek"
				name="secenek">
				<option value="Yapay Zeka">Yapay Zeka</option>
				<option value="Veritabanı">Veritabanı</option>
				<option value="OOP">OOP</option>
				<option value="Blockchain">Blockchain</option>
			</select> <label for="tarih_ekle">Tarih: <%=new java.util.Date()%></label><br>
			Email:<input type="text" name="yazar_email" class="form-control rounded-0">
			<input type="submit" class="btn btn-outline-primary" value="Gönder">
		</div>

	</form>
	<!-- Makale Ekle Bitti -->


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