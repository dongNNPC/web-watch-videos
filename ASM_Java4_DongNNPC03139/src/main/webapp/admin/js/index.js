$('.pagination-inner a').on('click', function() {
    $(this).siblings().removeClass('pagination-active');
    $(this).addClass('pagination-active');
})

 // Đóng form khi click vào bên ngoài
 window.onclick = function (event) {
    if (event.target == document.getElementById("shareForm")) {
      document.getElementById("shareForm").style.display = "none";
    }
  };