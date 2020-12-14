<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Kaydol</title>
<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template-->
<link href="../css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">

	<div class="container">
		<div class="card card-register mx-auto mt-5">
			<div class="card-header">Hoca Kaydol</div>
			<div class="card-body">
				<form action="../Hoca_Kaydol" method="post">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="hoca_adi" name="hoca_adi" class="form-control"
										placeholder="Adınız" required="required"
										autofocus="autofocus"> <label for="hoca_adi">Adınız</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="hoca_soyadi" name="hoca_soyadi" class="form-control"
										placeholder="Soyadınız" required="required"> <label
										for="hoca_soyadi">Soyadınız</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="hoca_kullaniciAdi" name="hoca_kullaniciAdi" class="form-control"
										placeholder="Kullanıcı Adı" required="required"> <label
										for="hoca_kullaniciAdi">Kullanıcı Adı</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="hoca_ilgiAlani" name="hoca_ilgiAlani" class="form-control"
										placeholder="İlgi Alanı" required="required"> <label
										for="hoca_ilgiAlani">İlgi Alanı</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="hoca_tel" name="hoca_tel" class="form-control"
										placeholder="Telefon" required="required"> <label
										for="hoca_tel">Telefon</label>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="email" id="hoca_email" name="hoca_email" class="form-control"
								placeholder="Email Adresiniz" required="required"> <label
								for="hoca_email">Email Adresiniz</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="hoca_sifre" name="hoca_sifre" class="form-control"
										placeholder="Şifreniz" required="required"> <label
										for="hoca_sifre">Şifreniz</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="hoca_sifre_tekrar" name="hoca_sifre_tekrar"
										class="form-control" placeholder="Şifre Tekrar"
										required="required"> <label for="hoca_sifre_tekrar">Şifre Tekrar</label>
								</div>
							</div>
						</div>
					</div>
					<input type="submit" class="btn btn-primary btn-block"  value="Kaydol">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="../index.jsp">Anasayfa</a> <a
						class="d-block small" href="../Template/sifremi_unuttum.jsp">Şifremi Unuttum</a>
				</div>
			</div>
		</div>
	</div>

	<!-- Bootstrap core JavaScript-->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

</body>
</html>