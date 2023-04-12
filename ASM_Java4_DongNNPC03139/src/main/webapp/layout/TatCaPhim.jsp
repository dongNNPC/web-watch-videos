<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>


<c:forEach var="item" items="${items}">        
    	<div class="col-md-4">
						<div class="grid">
							<figure class="effect-ravi">
								<img src="/ASM_Java4_DongNNPC03139/images/${item.poster}" width="200px" height="230px" />
								<figcaption>
									<div>
										<h4 class="text-truncate"
											style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; max-width:250px;">
											${item.title}
											</h4>
										<p style="text-align: left;">
											<i
												style="color: black; text-align: right; background-color: rgba(255, 255, 255, 0.594); border-radius: 3px"><b>
												${item.views}
													views</b></i>
										</p>
									</div>
									<a href="/ASM_Java4_DongNNPC03139/ChiTiet/?a=${item.id}"></a>
								</figcaption>
							</figure>
						</div>
					</div>
               	</c:forEach>
    