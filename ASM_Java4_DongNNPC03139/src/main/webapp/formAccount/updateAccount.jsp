<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<title>Chỉnh sửa trang cá nhân</title>
<link rel="shortcut icon" href="images/logo_16.png" type="image/x-icon">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body {
	background: #333;
	margin-top: 50px;
}

.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 0 solid transparent;
	border-radius: 10px;
	margin-bottom: 1.5rem;
	box-shadow: 0 2px 6px 0 rgb(218 218 253/ 65%), 0 2px 6px 0
		rgb(206 206 238/ 54%);
	margin-top: 70px;
}

.me-2 {
	margin-right: .5rem !important;
}
</style>
</head>
<body>
	<div class="container">
		<form action="/ASM_Java4_DongNNPC03139/formAccount/updateAccount"
			method="post">
			<div class="main-body">
				<div class="row">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-body">
								<div class="d-flex flex-column align-items-center text-center">
									<img src="https://bootdey.com/img/Content/avatar/avatar6.png"
										alt="Admin" class="rounded-circle p-1 bg-secondary"
										width="110">
									<div class="mt-3">
										<h4>${user.fullname}</h4>
										<p class="text-secondary mb-1">Công nghệ thông tin</p>
										<p class="text-muted font-size-sm">Phường Long hoà , Ninh
											kiều , Cần Thơ</p>
										<a class="btn btn-secondary col-lg-8" style="color: #f7f7ff;">
											<input type="file">
										</a> <a class="btn btn-secondary col-lg-2"
											style="color: #f7f7ff; height: 43px;"> <i
											class="fa-solid fa-pen"></i>
										</a>
									</div>
								</div>
								<hr class="my-3">
								<i >${message}</i>
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="card">
							<div class="card-body">
								<h3 style="text-align: center;" class="mb-3">CẬP NHẬT THÔNG
									TIN</h3>
								<div class="row mb-3">
									<div class="col-sm-3">
										<h6 class="mb-0">ID :</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<input type="text" class="form-control" name="id"
											value="${user.id}">
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-3">
										<h6 class="mb-0">Mật khẩu :</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<input type="password" class="form-control" name="password"
											value="${user.password}">
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-3">
										<h6 class="mb-0">Họ và tên :</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<input type="text" class="form-control" name="fullname"
											value="${user.fullname}">
									</div>
								</div>
								<div class="row mb-3">
									<div class="col-sm-3">
										<h6 class="mb-0">Email :</h6>
									</div>
									<div class="col-sm-9 text-secondary">
										<input type="text" class="form-control" name="email"
											value="${user.email}">
									</div>
								</div>
								<div class="mb-3">
									<input type="hidden" class="form-control" name="admin"
										value="${user.admin}">
								</div>
								<div class="row">
									<div class="col-sm-3"></div>
									<div class="col-sm-9 text-secondary">
										 <button type="submit" class="btn btn-secondary px-4">
										 Update	<i class="fa-solid fa-floppy-disk"></i>
										 </button>
										<a href="/ASM_Java4_DongNNPC03139/index" class="btn btn-secondary "
											style="color: #ffffff; margin-left: 235px;"> quay về <i
											class="fa-solid fa-house"></i>
										</a>
									</div>
								</div>

							</div>
							 
						</div>

					</div>
				</div>
			</div>
		</form>
	</div>
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