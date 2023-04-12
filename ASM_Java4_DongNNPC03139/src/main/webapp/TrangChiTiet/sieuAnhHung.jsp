<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
<title>Phim siêu anh hùng</title>
<link rel="shortcut icon" href="../images/logo_16.png"
	type="image/x-icon">

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="../style/luffy.css">
<link rel="stylesheet"
	href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<link rel="stylesheet" href="../style/style.css">
<link rel="stylesheet" href="index.js">
</head>

<body style="background-color: #333; color: #ffffff; margin-top: 390px;">
	<header>
		<div class="navigation-wrap bg-light start-header start-style">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<%@include file="layoutTCT/navTCT.jsp"%>
					</div>
				</div>
			</div>
		</div>

	</header>
	<main class="container">
		<div class="row">
			<div class="col-md-9">
				<iframe width="850" height="400" style="border-radius: 20px;"
					src="https://www.youtube.com/embed/oXIWoUoLoKg"
					title="REVIEW PHIM BIỆT ĐỘI SIÊU ANH HÙNG 1 || AVENGERS || SAKURA REVIEW"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
				<h4>Phim biệt đội siêu anh hùng</h4>
				<h6>
					<i><i class="fa-solid fa-eye"></i> 400 views | 120phut</i> <br>
				</h6>
				<br>

				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#dialog2">
					thích video <i class="fa-solid fa-thumbs-up"></i>
				</button>
				&ensp;
				<button type="button" class="btn btn-success" data-toggle="modal"
					data-target="#dialog1">
					Chia sẻ <i class="fa-solid fa-share"></i>

				</button>
				<br>
				<h5 style="text-align: justify;">
					<br> Người Dơi The Batman 2022 Full HD Vietsub Thuyết Minh
					Trong năm thứ hai chiến đấu với tội phạm, Batman phát hiện ra tham
					nhũng ở thành phố Gotham , nơi kết nối với gia đình của chính anh
					ta trong khi đối mặt với một kẻ giết người hàng loạt được gọi là
					Riddler .
				</h5>

			</div>
			<div class="col-md-3">
				<%@include file="layoutTCT/PhimBenPhai.jsp"%>
			</div>
		</div>
		<hr style="background-color: #8e8e8e;">
		<h3 style="text-align: left;">
			&ensp; <i class="fa-solid fa-video"></i> Mới cập nhật <i
				class="fa-solid fa-angle-right"></i>
		</h3>
		<div class="row ">
			<%@include file="layoutTCT/PhimMoiCapNhat.jsp"%>
		</div>
	</main>
	<%@include file="layoutTCT/share.jsp"%>
	<%@include file="layoutTCT/buttonYeuThich.jsp"%>
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