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

import com.poly.model.Video;
import com.poly.model.DAO.VideoDAO;

/**
 * Servlet implementation class VideoServlet
 */
@MultipartConfig
@WebServlet({ "/video/video-management", "/video/edit/*", "/video/create", "/video/update/*", "/video/delete/*" })
public class VideoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VideoServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		Video video = new Video();
		VideoDAO dao = new VideoDAO();

		String uri = req.getRequestURI();
		if (uri.contains("create")) { // khi người dùng submit vào create
			try {
				File dir = new File(req.getServletContext().getRealPath("/images"));
				if (!dir.exists()) {
					dir.mkdirs();
				}
				Part photo = req.getPart("poster"); // file hình
				File photoFile = new File(dir, photo.getSubmittedFileName());
				BeanUtils.populate(video, req.getParameterMap());

				if (!photo.getSubmittedFileName().isEmpty()) {
//					String videoId = req.getParameter("a");
//					Video videott = dao.findById(videoId);
					photo.write(photoFile.getAbsolutePath());
					video.setPoster(photoFile.getName());
					System.out.println("vo duoc day roi ne");
					dao.create(video);

				} else {
					video.setPoster("không có ảnh");
					dao.create(video);
				}

				req.setAttribute("message", "thêm thành công");
				System.out.println("ten anh ne: " + photoFile.getName());
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "thêm không thành công");
				e.printStackTrace();
			}

//			req.setAttribute("message", photoFile.getName());
			VideoDAO daovd = new VideoDAO();
			req.setAttribute("video", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/video-management").forward(req, resp);
			return;

		} else if (uri.contains("update")) { // khi người dùng submit vào update

			try {
				String videoId = req.getParameter("a");
				Video videott = dao.findById(videoId);
				File dir = new File(req.getServletContext().getRealPath("/images/img-flim"));
				if (!dir.exists()) {
					dir.mkdirs();
				}
				Part photo = req.getPart("poster"); // file hình
				File photoFile = new File(dir, photo.getSubmittedFileName());
				BeanUtils.populate(video, req.getParameterMap());

				if (!photo.getSubmittedFileName().isEmpty()) {
//						String videoId = req.getParameter("a");
//						Video videott = dao.findById(videoId);
					photo.write(photoFile.getAbsolutePath());
					video.setPoster(photoFile.getName());
					System.out.println("vo duoc day roi ne");
					dao.update(video);

				} else {
					video.setPoster(videott.getPoster());
					dao.update(video);
				}

				req.setAttribute("message", "update thành công");
				System.out.println("ten anh ne: " + photoFile.getName());
			} catch (IllegalAccessException | InvocationTargetException e) {
				req.setAttribute("message", "update không thành công");
				e.printStackTrace();
			}

//				req.setAttribute("message", photoFile.getName());
			VideoDAO daovd = new VideoDAO();
			req.setAttribute("video", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/video-management").forward(req, resp);
			return;

		} else if (uri.contains("delete")) { // khi người dùng submit vào delete

			try {
				String videoId = req.getParameter("a");
				dao.remove(videoId);
				req.setAttribute("message", "xóa thành công");
			} catch (Exception e) {
				e.printStackTrace();
			}

			VideoDAO daovd = new VideoDAO();
			req.setAttribute("video", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/video-management").forward(req, resp);
			return;

		} else if (uri.contains("edit")) {
			String videoId = req.getParameter("a");
			video = dao.findById(videoId);
			req.setAttribute("form", video);
			VideoDAO daovd = new VideoDAO();
			req.setAttribute("video", daovd.findAllPage(0, 8));
			req.getRequestDispatcher("/admin/video-management").forward(req, resp);
			return;
		}

		resp.sendRedirect("/admin/video-management");

	}
}
