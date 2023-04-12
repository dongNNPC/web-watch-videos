<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<%-- <c:forEach var="item" items="${benphai}"> --%>
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
			<tr >
				<td class="d-inline-block text-truncate" style="max-width:250px;">&ensp; Phim : ${item.title}</td>
			</tr>
			<tr>
				<td><i class="float-left text-muted">
			&ensp;	<i class="fa-solid fa-eye "></i> ${item.views} lượt xem &#8226; hôm qua</i></p>
			<br>
			</tr>
			</c:forEach>
		</tbody>
	</table>
<%-- </c:forEach> --%>