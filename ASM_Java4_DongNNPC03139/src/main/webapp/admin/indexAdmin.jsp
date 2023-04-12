<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <title>
	Trang chủ  admin
    </title>
    <link rel="shortcut icon" href="/ASM_Java4_DongNNPC03139/admin/images/logo_16.png" type="image/x-icon">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/admin/fontawesome-free-6.0.0-beta3-web/css/all.min.css">
    
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="/ASM_Java4_DongNNPC03139/admin/js.js"></script>
    <link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/admin/css/Video.css">
     <link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/admin/css/styleQL.css">
    <link rel="stylesheet" href="/ASM_Java4_DongNNPC03139/admin/js/video.js">
</head>

<body>
    <div class="vertical-nav " id="sidebar">
        <div class="py-4 px-3 mb-4">
            <div class="media d-flex align-items-center"><img src="/ASM_Java4_DongNNPC03139/admin/images/bgEndGame.jpg" alt="..." width="100px"
                    height="60px" class="mr-3 rounded-circle  shadow-sm">
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

    <br> <br><br> <br>
    <!-- Pag<br> <br>e content holder -->
    <div class="page-content row " id="content">

        <div class="col-md-12 " style="margin-top: 100px;">
            <h1 class="text-center">TRANG CHỦ</h1>
            <div class="form-group col-lg-6 mx-auto d-flex align-items-center my-2">
                <div class="border-bottom w-100 ml-2"></div>
                <span class="px-1 small text-muted font-weight-bold text-muted">Note</span>
                <div class="border-bottom w-100 mr-2"></div>
            </div>
            <p class="text-center">Quản lý video : nơi để bạn up lên những video ,<br>
                                  Quản lý User : quản lý những thông tin của người dùng đã truy cập <br>
                                Quản lý yêu thích : có thể xem những ai đã yêu thích video  </p>
        </div>

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