<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Đăng kí</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<link rel="shortcut icon" href="images/logo_16.png" type="image/x-icon">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="../style/Singin.css">
<link rel="stylesheet"
	href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
</head>
<body style="background: #333;">
	<form action="/ASM_Java4_DongNNPC03139/formAccount/sign-up"
		method="post">
		<div class="container">
			<div class="row  align-items-center">
				<!-- For Demo Purpose -->
				<div class="col-md-5">
					<img src="../images/bgSingin1.gif" alt=""
						class="img-fluid mb-3  d-md-block">

				</div>
				<!-- Registeration Form -->
				<div class="col-md-7 col-lg-6 ml-auto">
					<form action="#">
						<div class="row">
							<div class="col-lg-6  mx-auto mb-1">
								<h1 class="mx-auto col-lg-12 mb-0">Đăng kí</h1>
								<p class="font-italic text-muted">để trải nghiệm tốt hơn
									nhé.</p>
							</div>
							<!-- User Name -->
							<div class="input-group col-lg-10  mx-auto mb-3">
								<div class="input-group-prepend">
									<span
										class="input-group-text bg-white px-4 border-md border-right-0"
										class="rounded-left"> <i class="fa fa-user text-muted"></i>
									</span>
								</div>
								<input id="firstName" type="text" name="id"
									placeholder="Nhập tài khoản"
									class="form-control bg-white border-left-0 border-md">
							</div>

							<!-- Password -->
							<div class="input-group col-lg-10  mx-auto mb-3">
								<div class="input-group-prepend">
									<span
										class="input-group-text bg-white px-4 border-md border-right-0">
										<i class="fa fa-lock text-muted"></i>
									</span>
								</div>
								<input id="password" type="password" name="password"
									placeholder="Nhập mật khẩu"
									class="form-control bg-white border-left-0 border-md">
							</div>

							<!-- Full Name -->
							<div class="input-group col-lg-10  mx-auto mb-3">
								<div class="input-group-prepend">
									<span
										class="input-group-text bg-white px-4 border-md border-right-0"
										class="rounded-left"> <i class="fa fa-user text-muted"></i>
									</span>
								</div>
								<input type="text" placeholder="Nhập họ và tên" name="fullname"
									class="form-control bg-white border-left-0 border-md">
							</div>

							<!-- Email Address -->
							<div class="input-group col-lg-10  mx-auto mb-3">
								<div class="input-group-prepend">
									<span
										class="input-group-text bg-white px-4 border-md border-right-0">
										<i class="fa fa-envelope text-muted"></i>
									</span>
								</div>
								<input id="email" type="email" name="email"
									placeholder="Nhập Email "
									class="form-control bg-white border-left-0 border-md">
							</div>
							
							<!-- admin  -->
							<br>
							<div class="input-group col-lg-10  mx-auto mb-3">
								<input type="hidden" class="form-check-input" value="false"
									name="admin"> <label class="form-check-label"
									for="exampleCheck1"></label>
							</div>
							<!-- button -->

							<!-- Submit Button -->
							<div class="form-group col-lg-6 mx-auto mb-0">
								
								<button type="submit" class="btn btn-secondary btn-block py-2">Đăng kí</button>
							</div>

							<!-- Divider Text -->
							<div
								class="form-group col-lg-10 mx-auto d-flex align-items-center my-2">
								<div class="border-bottom w-100 ml-2"></div>
								<span class="px-1 small text-muted font-weight-bold text-muted">OR</span>
								<div class="border-bottom w-100 mr-2"></div>
							</div>




							<!-- Already Registered -->
							<div class="text-center w-100 my-0">
								<p class="text-muted font-weight-bold ">
									Bạn đã có tài khoản? <a href="Login.jsp"
										style="text-decoration: none;"
										class="textLogin text-dark ml-1">Đăng nhập</a>
								</p>
									<h4>${message}</h4>
							</div>
						
						</div>
					</form>
				</div>
			</div>
		</div>
		
	</form>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>