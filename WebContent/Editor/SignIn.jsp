<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Editor Girişi</title>
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
			<div class="card-header">Editor Giris</div>
			<div class="card-body">

				<form action="../Editor_Login" method="post">
					<div class="form-group">
						<div class="form-label-group">
							<input type="email" name="editor_email" id="editor_email" class="form-control"
								placeholder="Email" required="required" autofocus="autofocus">
							<label for="editor_email">Email</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-label-group">
							<input type="password" name="editor_sifre" id="editor_sifre" class="form-control"
								placeholder="Şifre" required="required"> <label
								for="editor_sifre">Şifre</label>
						</div>
					</div>
					<input type="submit" class="btn btn-primary btn-block"
						value="Giriş">

				</form>
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