<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<form action="" method="post">
	<div class="pagination">
		<a class="pagination-newer" href="/ASM_Java4_DongNNPC03139/page/?a=first#section-4">Đầu</a> 
		<span class="pagination-inner"> 
			<%
			 int a = (int) request.getAttribute("number");
			 for (int i = 1; i <= a; i++) {
				 out.println("<a href='/ASM_Java4_DongNNPC03139/page/?page="+i+"#section-4'>"+i+"</a>");
 				}		
 			%>
		</span>
		 <a class="pagination-older" href="/ASM_Java4_DongNNPC03139/page/?a=last#section-4">Cuối</a>
	</div>
</form>