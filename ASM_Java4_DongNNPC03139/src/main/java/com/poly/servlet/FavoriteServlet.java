package com.poly.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.model.Favorite;
import com.poly.model.User;
import com.poly.model.Video;
import com.poly.model.DAO.FavoriteDAO;
import com.poly.model.DAO.UsersDAO;
import com.poly.model.DAO.VideoDAO;

@WebServlet({ "/favorite/favorite-page", "/favorite/create/*", "/favorite/delete/*" })
public class FavoriteServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private void pageFa(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			UsersDAO dao = new UsersDAO();
			User user = (User) req.getSession().getAttribute("user");
			user = dao.findById(user.getId());
			List<Favorite> favorite = user.getFavorites();

			req.setAttribute("favorite", favorite);
		} catch (Exception e) {
		}
		req.getRequestDispatcher("/formAccount/TrangYeuThich.jsp").forward(req, resp);
	}

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();
		if (uri.contains("/favorite-page")) {
			this.pageFa(req, resp);
		} else if (uri.contains("/create")) {

			try {
				this.createFavorite(req, resp);
			} catch (Exception e) {
				e.printStackTrace();
				resp.sendRedirect("/ASM_Java4_DongNNPC03139/formAccount/Login");

				return;
			}

		} else if (uri.contains("/delete")) {

			int id = Integer.parseInt(req.getParameter("id"));
			FavoriteDAO daofa = new FavoriteDAO();
			System.out.println(id);
			daofa.remove(id);

			this.pageFa(req, resp);
		}
	}

	private void createFavorite(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		VideoDAO daovd = new VideoDAO();
		String videoId = req.getParameter("watchId");
		Video video = daovd.findById(videoId);
		System.out.println("ra id nè: " + videoId);
		User user = (User) req.getSession().getAttribute("user");

		Date currentDate = new Date();
		// Tạo định dạng ngày tháng
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// Chuyển đổi thành chuỗi ngày tháng và in ra
		String dateString = dateFormat.format(currentDate);
		System.out.println(dateString);

		Favorite fa = new Favorite();
		FavoriteDAO daofa = new FavoriteDAO();
		fa.setUser(user);
		fa.setVideo(video);
		fa.setLikeDate(dateString);

		boolean check = true;

		List<Favorite> listId = daofa.findAllVideoIdByUser(user.getId());
		for (int i = 0; i < listId.size(); i++) {
			if (listId.get(i).getVideo().getId().equalsIgnoreCase(videoId)) {
				check = false;
			}
		}

		if (check) {
			daofa.create(fa);
		}
		resp.sendRedirect("/ASM_Java4_DongNNPC03139/ChiTiet/?a=" + videoId);
	}
}
