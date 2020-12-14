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
			<div class="card-header">Editor Kaydol</div>
			<div class="card-body">
				<form>
					<div class="form-group">
						<div class="form-label-group">
							<input type="text" id="eski_sifre" class="form-control"
								placeholder="Eski Şifre" required="required"> <label
								for="eski_sifre">Eski Şifre</label>
						</div>
					</div>
					<div class="form-group">
						<div class="form-row">
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="inputPassword" class="form-control"
										placeholder="Password" required="required"> <label
										for="inputPassword">Yeni Şifre</label>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-label-group">
									<input type="password" id="confirmPassword"
										class="form-control" placeholder="Confirm password"
										required="required"> <label for="confirmPassword">Şifre
										Tekrar</label>
								</div>
							</div>
						</div>
					</div>
					<a class="btn btn-primary btn-block" href="login.html">Kaydol</a>
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