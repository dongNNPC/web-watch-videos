<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Trang quản lý video</title>
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
				<img src="/ASM_Java4_DongNNPC03139/admin/images/bgEndGame.jpg" alt="..." width="100px"
					height="60px" class="mr-3 rounded-circle  shadow-sm">
				<div class="media-body">
					<h4 class="m-0">${user.id}</h4>
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
		<h1 class="text-center mt-2 text-white">QUẢN LÝ VIDEO</h1>
		<form action="" enctype="multipart/form-data" method="post">
		
			<div class="row">
				<div class="col-lg-12">
					<!-- Nav Tab -->
					<ul class="nav nav-tabs">
						<li class="nav-item"><a href="#tab-1" class="nav-link active"
							data-toggle="tab" style="color: #495057;">Video Edition </a>
							<div class="tab-slider"></div></li>
						<li class="nav-item"><a href="#tab-2" class="nav-link"
							data-toggle="tab" style="color: #495057;">Video List </a>
							<div class="tab-slider"></div></li>

					</ul>

					<!-- Tab Content -->
					<div class="tab-content">
						
						<!-- Tab 1 Content -->
						<div id="tab-1" class="card-tab tab-pane fade show active">
							<div class="row">
								<div class="col-md-6">
									<div class="avatar-upload">
										<div class="avatar-preview">
											<img id="avatar-img" src="/ASM_Java4_DongNNPC03139/images/${form.poster}"
												/>
										</div>
										<div class="avatar-edit">
											<input type="file"  name="poster" id="avatar"
												accept=".jpg, .jpeg, .png, .webp" /> <label for="avatar"></label>
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<!-- video id -->
									<div class="row mb-3">
										<div class="col-sm-12 text-secondary">
											<input type="text" class="form-control" name="id" value="${form.id}"
												placeholder="Video ID ?">
										</div>
									</div>
									<!-- video title -->
									<div class="row mb-3">
										<div class="col-sm-12 text-secondary">
											<input type="text" class="form-control" name="title" value="${form.title}"
												placeholder="Video Title ?">
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-sm-12 text-secondary">
											<input type="text" class="form-control" name="views" value="${form.views}"
												placeholder="Video Count ?">
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-sm-3 text-secondary">
											<div class="form-check">
												<label class="form-check-label"> 
												<input type="radio"  name="active" value="True" ${form.active?'checked':''}  checked="checked"	
													class="form-check-input" >Active
												</label>
											</div>
										</div>
										<div class="col-sm-3 text-secondary mr-4">
											<div class="form-check">
												<label class="form-check-label">
												 <input type="radio" name="active" value="False" ${form.active?'':'checked'}
													class="form-check-input" >Inactive
												</label>
											</div>
										</div>
									</div>
								</div>
								<label for="">Description ?</label>
								<textarea name="description" id="" cols="117" rows="3">${form.description}</textarea>
							</div>
							<br>
							<div class="float-lg-left">
									<i style="background-color: black;color: white;"> ${message} </i>
							</div>
							<div class="float-lg-right">
								<button type="submit" class="btn btn-primary" formaction="/ASM_Java4_DongNNPC03139/video/create">
									Create <i class="fas fa-plus"></i>
								</button>
								<button type="submit" class="btn btn-success" formaction="/ASM_Java4_DongNNPC03139/video/update/?a=${form.id}">
									Update <i class="fas fa-pen"></i>
								</button>
								<button type="submit" class="btn btn-danger" formaction="/ASM_Java4_DongNNPC03139/video/delete/?a=${form.id	}">
									Delete <i class="fas fa-trash-alt"></i>
								</button>
								<a type="button" class="btn btn-dark"  href="/ASM_Java4_DongNNPC03139/admin/video-management">
									Reset <i class="fas fa-redo-alt"></i>
								</a>
							</div>
							<br>
						</div>


						<!-- Tab 2 Content -->
						<div id="tab-2" class="card-tab tab-pane fade" style="  overflow-y: scroll; height: 370px">


							<!-- bảng của tab2 -->
							<table class="table table-hover overflow-auto">
								<tr>
									<th>Youtube Id</th>
									<th>Video Title</th>
									<th>View Count</th>
									<th>Status</th>
									
									<th></th>
								</tr>

								<tbody>
								 <c:forEach var="video" items="${videos}">
									<tr>
										 <td>${video.id}</td>
										 <td>${video.title}</td>
										 <td>${video.views}</td>
										 <td>${video.active}</td>
										<td><a href="/ASM_Java4_DongNNPC03139/video/edit/?a=${video.id}" class="btn btn-success btn-block py-2">
												<span class="font-weight-bold"> <i class="fas fa-pen"></i>
											</span>
										</a></td>
									</tr>
									</c:forEach>
								</tbody>
								
							</table>
							<!-- <div class="row">
								<div class="form-group col-lg-8  float-lg-right">
									<i style="background-color: #495057; color: white;">&ensp;
										130 video &ensp;</i>
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
	<script>
        
    function previewAvatar(input) {
    var preview = document.querySelector('#avatar-img');
    var file = input.files[0];
    var reader = new FileReader();
  
    reader.addEventListener("load", function () {
      preview.src = reader.result;
    }, false);
  
    if (file) {
      reader.readAsDataURL(file);
    }
  }
  var input = document.querySelector('#avatar');
  input.addEventListener('change', function() {
    previewAvatar(this);
  });
    </script>
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