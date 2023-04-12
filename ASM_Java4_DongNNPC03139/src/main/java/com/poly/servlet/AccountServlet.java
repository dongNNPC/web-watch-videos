package com.poly.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;

import com.poly.model.User;
import com.poly.model.DAO.UsersDAO;

@WebServlet({ "/formAccount/sign-up", "/formAccount/Login", "/formAccount/sign-out", "/formAccount/forgot-password",
		"/formAccount/change-password", "/formAccount/updateAccount" })
public class AccountServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		if (uri.contains("Login")) {
			this.doSignIn(req, resp);
		} else if (uri.contains("sign-up")) {
			this.doSignUp(req, resp);

		} else if (uri.contains("sign-out")) {
			req.getSession().setAttribute("user", "");
			resp.sendRedirect("/ASM_Java4_DongNNPC03139/formAccount/Login");
		} else if (uri.contains("forgot-password")) {
		} else if (uri.contains("change-password")) {
		} else if (uri.contains("updateAccount")) {
			this.doEditProfile(req, resp);
		}
	}

// Tạo đăng nhập
	private void doSignIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG NHẬP
			String id = req.getParameter("username");
			String pw = req.getParameter("password");
			try {
				UsersDAO dao = new UsersDAO();
				User user = dao.findById(id);
				if (!user.getPassword().equals(pw)) {
					req.setAttribute("message", "Sai mật khẩu!");
				} else {
					req.setAttribute("message", " thành công!");
					req.getSession().setAttribute("user", user);
					if (user.getAdmin() == false) {
						req.getRequestDispatcher("/index").forward(req, resp);
						return;
					} else {
						req.getRequestDispatcher("/admin/indexAdmin.jsp").forward(req, resp);
						return;
					}
				}
			} catch (Exception e) {
				req.setAttribute("message", "Sai tên đăng nhập!");
			}
		}
		req.getRequestDispatcher("/formAccount/Login.jsp").forward(req, resp);
	}

// tạo đăng kí
	private void doSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {
			// TODO: ĐĂNG KÝ
			try {
				User entity = new User();
				BeanUtils.populate(entity, req.getParameterMap());
				UsersDAO dao = new UsersDAO();
				dao.create(entity);
				req.setAttribute("message", "Đăng ký thành công!");

			} catch (Exception e) {
				req.setAttribute("message", "Lỗi đăng ký!");
				System.out.println(e);
			}
		}
		req.getRequestDispatcher("/formAccount/sign-up.jsp").forward(req, resp);
	}

// tạo chỉnh sửa thông tin
	private void doEditProfile(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		User user = (User) req.getSession().getAttribute("user");
		String method = req.getMethod();
		if (method.equalsIgnoreCase("POST")) {

			// TODO: CẬP NHẬT
			try {
				BeanUtils.populate(user, req.getParameterMap());
				UsersDAO dao = new UsersDAO();
				dao.update(user);
				req.setAttribute("message", "Cập nhật tài khoản thành công!");
			} catch (Exception e) {
				req.setAttribute("message", "Lỗi cập nhật tài khoản!");
			}
		}
		req.getRequestDispatcher("/formAccount/updateAccount.jsp").forward(req, resp);
	}

}
