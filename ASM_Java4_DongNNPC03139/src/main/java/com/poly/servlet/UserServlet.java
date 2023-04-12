package com.poly.servlet;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.model.User;
import com.poly.model.Video;
import com.poly.model.DAO.UsersDAO;
import com.poly.model.DAO.VideoDAO;

/**
 * Servlet implementation class UserServlet
 */
@MultipartConfig
@WebServlet({ "/user/user-management", "/user/edit/*", "/user/create", "/user/update/*", "/user/delete/*" })
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		User user = new User();
		UsersDAO dao = new UsersDAO();

		String uri = req.getRequestURI();
		if (uri.contains("update")) { // khi người dùng submit vào update

			try {
				BeanUtils.populate(user, req.getParameterMap());
				dao.update(user);
				req.setAttribute("message", "Cập nhật thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Cập nhật thất bại!");
			}
			req.getRequestDispatcher("/admin/user-management").forward(req, resp);
			return;
		} else if (uri.contains("delete")) { // khi người dùng submit vào delete

			try {
				String videoId = req.getParameter("a");
				dao.remove(videoId);
				req.setAttribute("message", "xóa thành công");
			} catch (Exception e) {
				e.printStackTrace();
			}

			UsersDAO daovd = new UsersDAO();
			req.setAttribute("video", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/user-management").forward(req, resp);
			return;

		} else if (uri.contains("edit")) {
			String videoId = req.getParameter("a");
			user = dao.findById(videoId);
			req.setAttribute("form", user);
			VideoDAO daovd = new VideoDAO();
			req.setAttribute("user", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/user-management").forward(req, resp);
			return;
		}

		// req.getRequestDispatcher("/admin/TrangQuanLyUser.jsp").forward(req, resp);
		resp.sendRedirect("/admin/user-management");
	}
}
