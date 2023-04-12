<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <title>Phim End game</title>
    <link rel="shortcut icon" href="../images/logo_16.png" type="image/x-icon">

    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../style/luffy.css">
    <link rel="stylesheet" href="../fontawesome-free-6.0.0-beta3-web/css/all.min.css">
    <link rel="stylesheet" href="../style/style.css">
    <link rel="stylesheet" href="index.js">
</head>

<body style=" background-color: #333; color: #ffffff;margin-top: 470px;">
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
                    src="https://www.youtube.com/embed/79uhQ85n0YU"
                    title="AVENGERS ENDGAME : FULL MOVIE fact |Marvel Superhero Movie HD |Marvel Studios&#39;"
                    frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
                    allowfullscreen></iframe>
                <h4>
                    Phim End Game
                </h4>
                <h6>
                    <i><i class="fa-solid fa-eye"></i>  400 views | 120phut</i> <br>
                </h6>
                <br>


               <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#dialog2">
					thích video
					<i class="fa-solid fa-thumbs-up"></i> 
				</button>
				&ensp;
				<button type="button" class="btn btn-success" data-toggle="modal"
					data-target="#dialog1">
					Chia sẻ
				<i class="fa-solid fa-share"></i>
				
				</button>
                <br>
                <h5 style="text-align: justify;"> <br>
                    PHIM BIỆT ĐỘI SIÊU ANH HÙNG 4 || AVENGERS: ENDGAME || SAKURA REVIEW
                    Năm năm sau (2023), Trái Đất vẫn hoang tàn. Phần lớn thành viên Biệt đội Avengers đã mỗi người một
                    ngả, Danvers bay vào vũ trụ để giải quyết các hậu quả Thanos gây ra, còn Barton lấy biệt danh mới là
                    Ronin và truy lùng xã hội đen trên khắp thế giới sau khi biết chuyện xảy ra với vợ con anh. Sau khi
                    tình cờ được giải thoát khỏi Lượng Tử Giới nhờ một con chuột vô thức bước lên các nút điều khiển,
                    Scott Lang (Ant-Man) mới biết sự kiện Búng tay rồi đến trụ sở Avengers gặp Romanoff và Rogers vẫn
                    còn ở lại. Từ trải nghiệm của bản thân, Lang cho biết năm năm vừa qua đối với anh chỉ là năm giờ bị
                    mắc kẹt và du hành thời gian là có thể xảy ra
                </h5>

            </div>
            <div class="col-md-3">
                <%@include file="layoutTCT/PhimBenPhai.jsp"%>
            </div>
        </div>
        <hr style="background-color: #8e8e8e;">
        <h3 style="text-align: left;">
            &ensp; <i class="fa-solid fa-video"></i>
            Mới cập nhật
            <i class="fa-solid fa-angle-right"></i>
        </h3>
      <div class="row ">
          	<%@include file="layoutTCT/PhimMoiCapNhat.jsp" %>
        	</div>
    </main>
    <!-- Optional JavaScript -->
    <%@include file="layoutTCT/share.jsp"%>
	<%@include file="layoutTCT/buttonYeuThich.jsp"%>
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