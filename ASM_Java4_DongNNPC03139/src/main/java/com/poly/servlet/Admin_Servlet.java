package com.poly.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.model.DAO.UsersDAO;
import com.poly.model.DAO.VideoDAO;

/**
 * Servlet implementation class AdminServlet1
 */
@WebServlet({ "/admin/index", "/admin/video-management", "/admin/user-management", "/admin/report-statistical" })
public class Admin_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Admin_Servlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String uri = req.getRequestURI();

		if (uri.contains("/index")) {
			req.getRequestDispatcher("/admin/indexAdmin.jsp").forward(req, resp);

		} else if (uri.contains("/video-management")) {
			VideoDAO daovd = new VideoDAO();
			req.setAttribute("videos", daovd.findAll());
			req.getRequestDispatcher("/admin/TranngQuanLyVideo.jsp").forward(req, resp);
		} else if (uri.contains("/user-management")) {
			UsersDAO daous = new UsersDAO();
			req.setAttribute("users", daous.findAll());
			req.getRequestDispatcher("/admin/TrangQuanLyUser.jsp").forward(req, resp);
		}
//		else if (uri.contains("/report-statistical")) {

//			req.getRequestDispatcher("/asm/Admin/assets/views/report-statistical.jsp").forward(req, resp);
	}

}
