<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Phim Bat man</title>
<link rel="shortcut icon"
	href="/ASM_Java4_DongNNPC03139/images/logo_16.png" type="image/x-icon">

<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/style/luffy.css">
<link rel="stylesheet"
	href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/style/style.css">
<link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/index.js">
<style>
</style>
</head>

<body
	style="background-color: #333; color: #ffffff; margin-top: 1100px;">
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
					src="https://www.youtube.com/embed/${video.id}"
					title="REVIEW PHIM NGƯỜI DƠI THE BATMAN 2022 || SAKURA REVIEW"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
					allowfullscreen></iframe>
				<h4>${video.title}</h4>
				<h6>
					<i><i class="fa-solid fa-eye"></i> ${video.views} views |
						120phut</i> <br>
				</h6>
				<br> <a
					href="/ASM_Java4_DongNNPC03139/favorite/create/?watchId=${video.id}"
					class="btn btn-primary"> thích video <i
					class="fa-solid fa-thumbs-up"></i>
				</a> &ensp;
				<button type="button" class="btn btn-success" data-toggle="modal"
					data-target="#dialog1">
					Chia sẻ <i class="fa-solid fa-share"></i>

				</button>

				<br>
				<h5 style="text-align: justify;">
					<br> ${video.description}
				</h5>

			</div>
			<div class="col-md-3">
				<%-- <%@include file="layoutTCT/PhimBenPhai.jsp"%> --%>
				<table style="margin-top: -10px;">
					<c:forEach var="item" items="${items}">
						<tbody>
							<tr>
								<td>
									<figure class="snip0016">
										<img src="/ASM_Java4_DongNNPC03139/images/${item.poster}"
											width="160px" height="130px" style="border-radius: 10px;">
										<figcaption>
											<h6 style="text-align: left;">${item.title}</h6>
											<p class="float-left">
												<i class="fa-solid fa-eye"></i> ${item.views} views
											</p>
											<a href="/ASM_Java4_DongNNPC03139/ChiTiet/?a=${item.id}"></a>
										</figcaption>
									</figure>
								</td>

							</tr>
							<tr>
								<td class="d-inline-block text-truncate"
									style="max-width: 250px;">&ensp; Phim : ${item.title}</td>
							</tr>
							<tr>
								<td><i class="float-left text-muted"> &ensp; <i
										class="fa-solid fa-eye "></i> ${item.views} lượt xem &#8226;
										hôm qua
								</i>
								</p> <br>
							</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
		</div>

	</main>

	<!-- Tạo form hiển thị form share -->
	<%@include file="layoutTCT/share.jsp"%>
	<%@include file="layoutTCT/buttonYeuThich.jsp"%>
	<!-- ================================ -->
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