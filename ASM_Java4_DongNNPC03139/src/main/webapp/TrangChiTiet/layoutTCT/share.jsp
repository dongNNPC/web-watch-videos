<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form action="" method="post">
 <div class="modal fade" id="dialog1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered">
          <div class="modal-content">
          
              <div class="modal-header">
                  <h3 class="modal-title"style="color: #000">CHIA SẺ VIDEO</h3>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
              </div>
              
              <div class="modal-body">
                <input type="text" class="form-control" placeholder="Nhập email" name="sendEmail">
              </div>
              
              <div class="modal-footer">
                  <button type="submit" class="btn btn-basic" data-dismiss="modal">Đóng</button>
                  <button type="submit" class="btn btn-success" formaction="/ASM_Java4_DongNNPC03139/share/?watchId=${video.id}">Chia sẻ
                    <i class="fa-solid fa-share"></i>
                  </button>
              </div>
              
          </div>
      </div>
  </div>
  </form>