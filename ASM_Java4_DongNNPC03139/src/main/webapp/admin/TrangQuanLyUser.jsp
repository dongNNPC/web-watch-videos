<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Trang quản lý user</title>

<link rel="shortcut icon"
	href="/ASM_Java4_DongNNPC03139/admin/images/logo_16.png"
	type="image/x-icon">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="/ASM_Java4_DongNNPC03139/admin/fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<script src="/ASM_Java4_DongNNPC03139/admin/js.js"></script>
<link rel="stylesheet"
	href="/ASM_Java4_DongNNPC03139/admin/css/Video.css">
<link rel="stylesheet"
	href="/ASM_Java4_DongNNPC03139/admin/css/styleQL.css">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/admin/js/video.js">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

</head>

<body>
	<div class="vertical-nav " id="sidebar">
		<div class="py-4 px-3 mb-4">
			<div class="media d-flex align-items-center">
				<img src="/ASM_Java4_DongNNPC03139/admin/images/bgEndGame.jpg"
					alt="..." width="100px" height="60px"
					class="mr-3 rounded-circle  shadow-sm">
				<div class="media-body">
					<h4 class="m-0">baoTran</h4>
					<p class="font-weight-light text-muted mb-0">Web developer</p>
				</div>
			</div>
		</div>

		<p
			class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0 ">Main</p>

		<%@include file="layoutAdmin/nav.jsp"%>


	</div>
	<!-- End vertical navbar -->


	<!-- Page content holder -->
	<div class="page-content " id="content">
		<h1 class="text-center mt-2 text-white">QUẢN LÝ USER</h1>
		<form action="" class="overflow-auto"  enctype="multipart/form-data" method="post">
			<div class="row">
				<div class="col-lg-12">
					<!-- Nav Tab -->
					<ul class="nav nav-tabs">
						<li class="nav-item"><a href="#tab-1" class="nav-link active"
							data-toggle="tab" style="color: #495057;">Video Edition</a>
							<div class="tab-slider"></div></li>
						<li class="nav-item"><a href="#tab-2" class="nav-link"
							data-toggle="tab" style="color: #495057;">Video List</a>
							<div class="tab-slider"></div></li>

					</ul>

					<!-- Tab Content -->
					<div class="tab-content">

						<!-- Tab 1 Content -->
						<div id="tab-1" class="card-tab tab-pane fade show active">
							<h2 class="text-center">THÔNG TIN NGƯỜI XEM</h2>
							<br>
							<!-- User Name -->
							<div class="row">
								<div class="input-group col-lg-6 mx-auto  mb-3">
									<div class="input-group-prepend">
										<span
											class="input-group-text bg-white px-4 border-md border-right-0"
											class="rounded-left"> <i class="fa fa-user text-muted"></i>
										</span>
									</div>
									<input  type="text" name="id" value="${form.id}"
										placeholder="Nhập tài khoản"
										class="form-control bg-white border-left-0 border-md">
								</div>
								<!-- Password -->
								<div class="input-group col-lg-6  mx-auto mb-3">
									<div class="input-group-prepend">
										<span
											class="input-group-text bg-white px-4 border-md border-right-0">
											<i class="fa fa-lock text-muted"></i>
										</span>
									</div>
									<input id="password" type="password" name="password" value="${form.password}"
										placeholder="Nhập mật khẩu"
										class="form-control bg-white border-left-0 border-md">
								</div>
								<!-- Full Name -->
								<div class="input-group col-lg-6 mx-auto  mb-3">
									<div class="input-group-prepend">
										<span
											class="input-group-text bg-white px-4 border-md border-right-0">
											<i class="fa fa-user text-muted"></i>
										</span>
									</div>
									<input name="fullname" value="${form.fullname}"
										placeholder="Nhập họ và tên "
										class="form-control bg-white border-left-0 border-md">
								</div>
								<!-- Email Address -->
								<div class="input-group col-lg-6 mx-auto  mb-3">
									<div class="input-group-prepend">
										<span
											class="input-group-text bg-white px-4 border-md border-right-0">
											<i class="fa fa-envelope text-muted"></i>
										</span>
									</div>
									<input id="email" type="email" name="email" value="${form.email}"
										placeholder="Nhập Email "
										class="form-control bg-white border-left-0 border-md">
								</div>

								<!-- Submit Button -->
								<div class="form-group col-lg-8  float-lg-right">
									<i style="background-color: black;color: white;"> ${message} </i>
								</div>
								<div class="form-group col-lg-2 ">
									<button formaction="/ASM_Java4_DongNNPC03139/user/delete/?a=${form.id}" class="btn btn-danger btn-block py-2"> <span
										class="font-weight-bold">Delete <i class="fas fa-trash"></i>
									</span>
									</button>
								</div>
								<div class="form-group col-lg-2">
									<button formaction="/ASM_Java4_DongNNPC03139/user/update" class="btn btn-success btn-block py-2"> <span
										class="font-weight-bold">Update <i class="fas fa-pen"></i>
									</span>
									</button>
								</div>

							</div>
						</div>

						<!-- Tab 2 Content -->
						<div id="tab-2" class="card-tab tab-pane fade " style= "overflow-y: scroll; height: 370px">

							<!-- bảng của tab2 -->
							<table class="table table-hover overflow-auto">
								<tr>
									<th>UserName</th>
									<th>Password</th>
									<th>Fullname</th>
									<th>Email</th>
									<th>Role</th>
									<th></th>
								</tr>

								<tbody>
								 <c:forEach var="user" items="${users}">
									<tr>
										<td>${user.id}</td>
										<td>${user.password}</td>
										<td>${user.fullname}</td>
										<td>${user.email}</td>
										<td>${user.admin}</td>
										<td><a href="/ASM_Java4_DongNNPC03139/user/edit/?a=${user.id}" class="btn btn-success btn-block py-2">
												<span class="font-weight-bold"> <i class="fas fa-pen"></i>
											</span>
										</a>
										</td>
									</tr>
									</c:forEach>
								</tbody>
							</table>
							<!-- <div class="row">
								<div class="form-group col-lg-8  float-lg-right">
									<i style="background-color: #495057; color: white;">&ensp;
										130 users &ensp;</i>
								</div>
								<div class="form-group col-lg-1 ">
									<a href="" class="btn btn-secondary  btn-block py-2"> <span
										class="font-weight-bold"> <i class="fas fa-angle-left"></i>
									</span>
									</a>
								</div>
								<div class="form-group col-lg-1 ">
									<a href="" class="btn btn-secondary btn-block py-2"> <span
										class="font-weight-bold"> <i
											class="fas fa-angle-double-left"></i>
									</span>
									</a>
								</div>
								<div class="form-group col-lg-1 ">
									<a href="" class="btn btn-secondary btn-block py-2"> <span
										class="font-weight-bold"> <i
											class="fas fa-angle-double-right"></i>
									</span>
									</a>
								</div>
								<div class="form-group col-lg-1 ">
									<a href="" class="btn btn-secondary btn-block py-2"> <span
										class="font-weight-bold"> <i class="fas fa-angle-right"></i>
									</span>
									</a>
								</div>

							</div> -->

						</div>
					</div>
				</div>
			</div>
		</form>
	</div>



	<!-- End demo content -->
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