
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Trang yêu thích</title>
<link rel="shortcut icon"
	href="/ASM_Java4_DongNNPC03139/images/logo_16.png" type="image/x-icon">
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
<style>
.card-img-top {
	width: 348px;
	height: 200px;
}
</style>
</head>

<body>
	<main class="container" style="margin-top: auto;">



		<div class="row">
			<div class="col-md-2">
				<a href="/ASM_Java4_DongNNPC03139/index" class="btn btn-secondary "
					style="color: #ffffff; margin-top: 20px;"> quay về <i
					class="fa-solid fa-house"></i>
				</a> &ensp;
			</div>
			<div class="col-md-10">
				<h1 style="color: #ffffff; margin-top: 10px;">PHIM BẠN YÊU
					THÍCH</h1>
			</div>
		</div>
		<div class="row">
			<c:forEach var="favorites" items="${favorite}">

				<div class="col-md-4 mt-4">
					<div class="card"
						style="width: 350px; background-color: #333333a8; border-radius: 10px;">
						<a
							href="/ASM_Java4_DongNNPC03139/ChiTiet/?a=${favorites.video.id}">
							<img class="card-img-top"
							src="/ASM_Java4_DongNNPC03139/images/${favorites.video.poster}"
							style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
						</a>
						<div class="card-body">
							<h4 class="card-title" style="text-align: center;">
								${favorites.video.title}</h4>
							<h6 class="card-title" style="color: #6a6464; text-align: left;">${favorites.video.views}
								người xem &#8226; hôm qua</h6>
							<br> &ensp;
							<div style="text-align: right;">
								<!-- <button type="button" class="btn btn-primary"
									data-bs-toggle="modal" data-bs-target="#myModal">
									Bỏ thích <i class="fa-solid fa-thumbs-down"></i>
									</button> -->
								<button type="button" class="btn btn-primary"
									data-toggle="modal" data-target="#aaa">
									Bỏ thích <i class="fa-solid fa-thumbs-down"></i>
									</button>
								&ensp;
								<button type="button" class="btn btn-success"
									data-toggle="modal" data-target="#_${favorites.video.id}">
									Chia sẻ <i class="fa-solid fa-share"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<br>

				<!--  hộp thoại share email-->
				<form action="" method="post">
					<div class="modal fade" id="_${favorites.video.id}" role="dialog"
						aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">

								<div class="modal-header">
									<h3 class="modal-title" style="color: #000">CHIA SẺ VIDEO</h3>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>

								<div class="modal-body">
									<input type="text" class="form-control"
										placeholder="Nhập email" name="sendEmail">
								</div>

								<div class="modal-footer">
									<button type="submit" class="btn btn-basic"
										data-dismiss="modal">Đóng</button>
									<button type="submit" class="btn btn-success"
										formaction="/ASM_Java4_DongNNPC03139/share/?watchId=${favorites.video.id}">
										Chia sẻ <i class="fa-solid fa-share"></i>
									</button>
								</div>

							</div>
						</div>
					</div>
				</form>
				<%-- hộp thoại bạn có chắc xoá không-->  --%>

				<!-- The Modal -->
				<div class="modal" id="aaa">
					<div class="modal-dialog modal-lg">
						<div class="modal-content">

							<!-- Modal Header -->
							<div class="modal-header">
								<h4 class="modal-title " style="color: black">Bạn có chắc
									muốn xoá video khỏi trang yêu thích  không</h4>
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
							</div>

							<!-- Modal footer -->
							<div class="modal-footer">
								<button type="submit" class="btn btn-basic"
										data-dismiss="modal">Đóng</button>
								<a class="btn btn-primary"
									href="/ASM_Java4_DongNNPC03139/favorite/delete/?id=${favorites.id}">
									Bỏ thích <i class="fa-solid fa-thumbs-down"></i>
								</a>
							</div>

						</div>
					</div>
				</div>


			</c:forEach>
		</div>
	</main>





	<%@include file="../TrangChiTiet/layoutTCT/HuyYeuThich.jsp"%>
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