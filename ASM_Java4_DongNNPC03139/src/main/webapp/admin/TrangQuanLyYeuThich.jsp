<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <title>
	THỐNG KÊ
    </title>
    <link rel="shortcut icon" href="../images/logo_16.png" type="image/x-icon">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
    <script src="js.js"></script>
    <link rel="stylesheet" href="css/Video.css">
     <link rel="stylesheet" href="css/styleQL.css">
    <link rel="stylesheet" href="js/video.js">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
</head>

<body>
    <div class="vertical-nav " id="sidebar">
        <div class="py-4 px-3 mb-4">
            <div class="media d-flex align-items-center"><img
                    src="../images/bgEndGame.jpg" alt="..."
                    width="100px" height="60px" class="mr-3 rounded-circle  shadow-sm">
                <div class="media-body">
                    <h4 class="m-0">${user.id}</h4>
                    <p class="font-weight-light text-muted mb-0">Web developer</p>
                </div>
            </div>
        </div>

        <p class="text-gray font-weight-bold text-uppercase px-3 small pb-4 mb-0 ">Main</p>

        <%@include file="layoutAdmin/nav.jsp"%>

       
    </div>
    <!-- End vertical navbar -->


    <!-- Page content holder -->
    <div class="page-content " id="content">
        <h1 class="text-center mt-2 text-white">THỐNG KÊ</h1>
        <form action="" class="overflow-auto">
			<div class="row">
				<div class="col-lg-12">
					<!-- Nav Tab -->
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a href="#tab-1" class="nav-link active" data-toggle="tab"
								style="color: #495057;">Favorites</a>
							<div class="tab-slider"></div>
						</li>
						<li class="nav-item">
							<a href="#tab-2" class="nav-link" data-toggle="tab" style="color: #495057;">Favorites
								User</a>
							<div class="tab-slider"></div>
						</li>
						<li class="nav-item">
							<a href="#tab-3" class="nav-link" data-toggle="tab" style="color: #495057;">Share
								Friends</a>
							<div class="tab-slider"></div>
						</li>
					</ul>

					<!-- Tab Content -->
					<div class="tab-content">

						<!-- Tab 1 Content -->
						<div id="tab-1" class="card-tab tab-pane fade show active">
							<table class="table table-hover">
								<tr>
									<th>Video Title</th>
									<th>Favorite Count</th>
									<th>Last Date</th>
									<th>Oldest Date</th>
								</tr>

								<tbody>
									<tr>
										<td>Lâu ghê mới gặp</td>
										<td>100</td>
										<td>31/12/2022</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
									<tr>
										<td>Lâu ghê mới gặp</td>
										<td>100</td>
										<td>31/12/2022</td>
										<td>11/11/2022</td>
									</tr>
									</tr>
									<tr>
									<tr>
										<td>Lâu ghê mới gặp</td>
										<td>100</td>
										<td>31/12/2022</td>
										<td>11/11/2022</td>
									</tr>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- Tab 2 Content -->
						<div id="tab-2" class="card-tab tab-pane fade">
							<!-- tạo seletion để chọn video title  -->
							<div class="box text-left" >
								<i class="font-weight-bold">Video title ?</i> &ensp;
								<select class="selectpicker" data-size="4">
									<option value="">SpiderMan</option>
									<option value="nickname">BatMan</option>
									<option value="first_name">Naruto</option>
									<option value="last_name">Boruto</option>
									<option value="syntax_highlighting">One pice</option>
									<option value="_ppm_wp_password_expired">DragonBall</option>
								</select>
							</div>
							<br>
							<!-- bảng của tab2 -->
							<table class="table table-hover">
								<tr>
									<th>UserName</th>
									<th>FullName</th>
									<th>Email</th>
									<th>Favorite Date</th>
								</tr>

								<tbody>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Dongnn</td>
										<td>Nguyễn nhựt dông</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
								</tbody>
							</table>
						</div>	
						<!-- Tab 3 Content -->
						<div id="tab-3" class="card-tab tab-pane fade">
							<!-- tạo seletion để chọn video title  -->
							<div class="box text-left" >
								<i class="font-weight-bold">Video title ?</i> &ensp;
								<select class="selectpicker" data-size="4">
									<option value="">SpiderMan</option>
									<option value="nickname">BatMan</option>
									<option value="first_name">Naruto</option>
									<option value="last_name">Boruto</option>
									<option value="syntax_highlighting">One pice</option>
									<option value="_ppm_wp_password_expired">DragonBall</option>
								</select>
							</div>
							<br>
							<table class="table table-hover ">
								<tr>
									<th>Sender Name</th>
									<th>Sender Email</th>
									<th>Receiver Email</th>
									<th>Sent Date</th>
								</tr>

								<tbody>
									<tr>
										<td>Nguyễn nhựt dông</td>
										<td>dongnnpc03139@fpt.edu.vn</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
									<tr>
										<td>Nguyễn nhựt dông</td>
										<td>dongnnpc03139@fpt.edu.vn</td>
										<td>dong@fpt.edu.vn</td>
										<td>11/11/2022</td>
									</tr>
								</tbody>
							</table>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>