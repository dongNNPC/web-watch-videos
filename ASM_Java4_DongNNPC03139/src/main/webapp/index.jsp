<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Trang chủ</title>
<link rel="shortcut icon" href="/ASM_Java4_DongNNPC03139/images/logo_16.png" type="image/x-icon">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href='https://fonts.googleapis.com/css?family=Raleway:400,800,300'
	rel='stylesheet' type='text/css'>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="/ASM_Java4_DongNNPC03139/fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/style/style.css">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/js/index.js">
</head>

<body>
	<header>

		<div class="navigation-wrap bg-light start-header start-style">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<%@include file="layout/nav.jsp"%>
					</div>
				</div>
			</div>
		</div>

	</header>

	
	<main class="container" style="margin-top: 2300px;">

		<!-- =================================Phần đầu mới cập nhật================================= -->
		<h3 style="text-align: left;">
			&ensp; <i class="fa-solid fa-video"></i> Mới cập nhật <i
				class="fa-solid fa-angle-right"></i>
		</h3>
		<div class="row" id="section-1" >
			<%@include file="layout/PhimMoiCapNhat.jsp"%>
	
			
	<!-- =================================Phần Phim chiếu rạp================================= -->
			
			<p id="section-2"></p>
			<h3 style="text-align: left; margin-top: 30px;">
				&ensp;<i class="fa-solid fa-clapperboard"></i> Phim chiếu rạp <i
					class="fa-solid fa-angle-right"></i>
			</h3>
			<br>
			<br>
			<br>
			<br>
			<div class="row">
				<%@include file="layout/PhimChieuRap.jsp"%>
			</div>

			<!-- ===============================Phim lẻ==========================  -->
			<h3 style="text-align: left; margin-top: 30px;" >
				&ensp;<i class="fa-brands fa-discord"></i> Phim lẻ mới <i
					class="fa-solid fa-angle-right"></i>
			</h3>
			<br>
			<br>
			<br>
			<br>
			<div class="row" id="section-3">
				<%@include file="layout/PhimLe.jsp"%>
			</div>

			<!--====================================== tất cả các phim ======================-->

			<div class="col-md-10">
				<h3 style="text-align: left; margin-top: 30px;" id="section-4">
					&ensp;<i class="fa-solid fa-photo-film"></i> Tất cả phim <i
						class="fa-solid fa-angle-right"></i>
				</h3>
			</div>
			<!-- Nút tăng dần giảm dần -->
			<div class="col-md-2" style="margin-top: 30px; text-align: right;">
				<%@include file="layout/SapXep.jsp"%>
			</div>
			<!-- Phim one pice -->
			<br>
			<br>
			<br>
			<br>
			<div class="content">
				<div class="row">
					<%@include file="layout/TatCaPhim.jsp" %>
				</div>
				<nav class="pagination-container ">
					<%@include file="layout/pagination.jsp" %>
				</nav>

			</div>
		</div>
		<br> <br>


	</main>





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