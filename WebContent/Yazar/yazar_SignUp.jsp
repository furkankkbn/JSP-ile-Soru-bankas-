<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
			<div class="card-header">Yazar Kaydol</div>
			<div class="card-body">
				<form method="post" action="../Yazar_Kaydol">
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="yazar_adi" name="yazar_adi" class="form-control"
										placeholder="Adınız" required="required"
										autofocus="autofocus"> <label for="yazar_adi">Adınız</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="text" id="yazar_soyadi" name="yazar_soyadi" class="form-control"
										placeholder="Soyadınız" required="required"> <label
										for="yazar_soyadi">Soyadınız</label>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="email" id="yazar_email" name="yazar_email" class="form-control"
								placeholder="Email" required="required"> <label
								for="Email">Email</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="text" id="yazar_kullaniciAdi" name="yazar_kullaniciAdi" class="form-control"
								placeholder="Kullanıcı Adınız" required="required"> <label
								for="yazar_kullaniciAdi">Kullanıcı Adınız</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="yazar_sifre" name="yazar_sifre" class="form-control"
										placeholder="Şifreniz" required="required"> <label
										for="yazar_sifre">Şifre</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="yazar_sifre_tekrar" name="yazar_sifre_tekrar"
										class="form-control" placeholder="Şifreniz"
										required="required"> <label for="yazar_sifre_tekrar">Şifre Tekrar</label>
								</div>
							</div>
						</div>
					</div>
					<input type="submit" class="btn btn-primary btn-block" value="Kaydol">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="../index.jsp">Anasayfa</a>
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