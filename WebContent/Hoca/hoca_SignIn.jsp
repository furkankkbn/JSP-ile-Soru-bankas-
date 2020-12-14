<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<!-- Custom fonts for this template-->
<link href="../vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">

<!-- Custom styles for this template-->
<link href="../css/sb-admin.css" rel="stylesheet">
</head>
<body class="bg-dark">

	<div class="container">
		<div class="card card-login mx-auto mt-5">
			<div class="card-header">Hoca Giriş</div>
			<div class="card-body">
				<form action="../Hoca_Login" method="post">
					<div class="form-group">
						<div class="form-label-group">
							<input type="email" id="hoca_email" name="hoca_email" class="form-control"
								placeholder="Email" required="required"
								autofocus="autofocus"> <label for="hoca_email">Email:</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="password" id="hoca_sifre" name="hoca_sifre" class="form-control"
								placeholder="Şifre" required="required"> <label
								for="hoca_sifre">Şifre</label>
						</div>
					</div>
					<input type="submit" class="btn btn-primary btn-block"  value="Giriş">
				</form>
				<div class="text-center">
					<a class="d-block small mt-3" href="../Hoca/hoca_SignUp.jsp">Kaydol</a> 
					<a class="d-block small" href="/Template/sifremi_unuttum.jsp">Şifremi Unuttum</a>
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