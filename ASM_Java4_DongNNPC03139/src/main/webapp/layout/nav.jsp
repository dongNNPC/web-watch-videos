
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <nav class="navbar navbar-expand-md navbar-light">

              <text transform="matrix(1 0 0 1 156 291)" class="st0 st1">NhutDong</text>

              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto py-4 py-md-0">
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4 active">

                  </li>
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                    <a class="nav-link" href="index#section-1">Anime</a>
                  </li>
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                    <a class="nav-link" href="index#section-2">Phim chiếu rạp</a>
                  </li>
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                    <a class="nav-link" href="index#section-3">Phim lẻ</a>
                  </li>
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                      aria-haspopup="true" aria-expanded="false">
                      Coi Nhiều nhất
                      <i class="fa-solid fa-angle-down"></i>
                    </a>
                    <div class="dropdown-menu">
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/TrangChiTiet/luffy.jsp">One piece</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/TrangChiTiet/naruto.jsp">Naruto</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/TrangChiTiet/pokemon.jsp">Pokemon</a>
                      <a class="dropdown-item" href="#section-4">Tất cả</a>
                    </div>
                  </li>
                  &ensp; &ensp; &ensp; &ensp;
                  <li class="nav-item pl-4 pl-md-0 ml-0 ml-md-4">
                    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button"
                      aria-haspopup="true" aria-expanded="false">
                      <i class="fa-solid fa-user"></i>
                     <!--  Tài khoản  -->${user.id}
                      <i class="fa-solid fa-angle-down"></i>
                    </a>
                    <div class="dropdown-menu">
                       <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/favorite/favorite-page">Trang Yêu Thích</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/updateAccount">Trang cá nhân</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/Forgotpassword.jsp">Quên mật khẩu</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/changePassword.jsp">Đổi mật khẩu</a>
                       <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/Login">Đăng nhập</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/sign-up">Đăng kí</a>
                      <a class="dropdown-item" href="/ASM_Java4_DongNNPC03139/formAccount/sign-out">Đăng xuất</a>
                    </div>
                  </li>
                </ul>
              </div>
            </nav>