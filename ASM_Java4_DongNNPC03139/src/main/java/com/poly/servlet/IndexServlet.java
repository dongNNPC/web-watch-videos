package com.poly.servlet;

import java.awt.Color;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poly.model.Share;
import com.poly.model.User;
import com.poly.model.Video;
import com.poly.model.DAO.ShareDao;
import com.poly.model.DAO.VideoDAO;
import com.poly.util.JpaUtils;

/**
 * Servlet implementation class IndexServlet
 */
@WebServlet({ "/index", "/ChiTiet/*", "/SapXep/ASC", "/page/*", "/share/*", "/singOut" })
public class IndexServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IndexServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		EntityManager em = JpaUtils.getEntityManager();
		VideoDAO dao = new VideoDAO();
		Video video = new Video();
		if (uri.contains("/index")) {

			int page = 1;
			// phân trang mỗi trang 6 trang
			double result = dao.findAll().size() / 6.0;
			// làm tròn để hiển thị
			double roundedResult = Math.round(result * 10.0) / 10.0;
			request.setAttribute("number", (int) Math.ceil(roundedResult));
			request.setAttribute("items", dao.findAllPage(page - 1, 6));
			// chuyển đến index.jsp
			request.getRequestDispatcher("/index.jsp").forward(request, response);
			// chuyển trang

		}
		// chuyển từ trang index đến trang chi tiết
		else if (uri.contains("ChiTiet")) {
			String idString = request.getParameter("a");
			dao.findById(idString);
			request.setAttribute("items", dao.findAllRamdom(12));
			request.setAttribute("video", dao.findById(idString));
			request.setAttribute("benphai", dao.findAllPage(0, 10));
			request.getRequestDispatcher("/TrangChiTiet/TrangChiTiet.jsp").forward(request, response);

		}
		// chuyển trang
		else if (uri.contains("/page")) {
			int page = 1;
			String a = request.getParameter("a");

			if (a != null) {
				if (a.equalsIgnoreCase("first")) {
					page = 1;
					//
					double result = dao.findAll().size() / 6.0;
					double roundedResult = Math.round(result * 10.0) / 10.0;
					request.setAttribute("number", (int) Math.ceil(roundedResult));
					request.setAttribute("items", dao.findAllPage(page - 1, 6));
					request.getRequestDispatcher("/index.jsp").forward(request, response);
					System.out.println("giai doan firsttttttttttttttttttttttt ");
					//
					// last
				} else {
					double result = dao.findAll().size() / 6.0;
					System.out.println("giai doan 1: " + result);
					double roundedResult = Math.round(result * 10.0) / 10.0;
					System.out.println("giai doan 2-1: " + Math.round(result * 10.0));
					System.out.println("giai doan 2: " + roundedResult);
					page = (int) Math.ceil(roundedResult);
					System.out.println("giai doan 3: " + Math.ceil(roundedResult));
					System.out.println("giai doan 4 ne: " + Math.ceil(result));
					//
					request.setAttribute("number", (int) Math.ceil(roundedResult));
					request.setAttribute("items", dao.findAllPage(page - 1, 6));
					request.getRequestDispatcher("/index.jsp").forward(request, response);

					//
				}
			} else {
				try {
					page = Integer.parseInt(request.getParameter("page"));
					//
					double result = dao.findAll().size() / 6.0;
					double roundedResult = Math.round(result * 10.0) / 10.0;
					request.setAttribute("number", (int) Math.ceil(roundedResult));
					request.setAttribute("items", dao.findAllPage(page - 1, 6));
					request.getRequestDispatcher("/index.jsp").forward(request, response);
					//
				} catch (Exception e) {
					//
					double result = dao.findAll().size() / 6.0;
					double roundedResult = Math.round(result * 10.0) / 10.0;
					request.setAttribute("number", (int) Math.ceil(roundedResult));
					request.setAttribute("items", dao.findAllPage(page - 1, 6));
					request.getRequestDispatcher("/index.jsp").forward(request, response);
					//
				}
			}

		}
		// share video
		else if (uri.contains("share")) {
			String videoId = request.getParameter("watchId");
			try {
				this.shareVideoDetailPage(request, response);
			} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect("/ASM_Java4_DongNNPC03139/formAccount/Login");
				return;
			}
			String idString = request.getParameter("watchId");
			dao.findById(idString);
			request.setAttribute("video", dao.findById(idString));
			request.setAttribute("benphai", dao.findAllPage(0, 10));
			response.sendRedirect("/ASM_Java4_DongNNPC03139/ChiTiet/?a=" + videoId);

		}
	}

	private void shareVideoDetailPage(HttpServletRequest request, HttpServletResponse response) {
		String videoId = request.getParameter("watchId");
		VideoDAO dao = new VideoDAO();
		Video video = dao.findById(videoId);
		String email = request.getParameter("sendEmail");
//		
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("ra id nè: " + videoId);
		System.out.println(user.getId());
		ShareDao sharedao = new ShareDao();

		Share sh = new Share();
		// sh.setId(null);
		sh.setVideo(video);
		sh.setUser(user);
		sh.setEmail(email);
		Date currentDate = new Date();
		// Tạo định dạng ngày tháng
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		// Chuyển đổi thành chuỗi ngày tháng và in ra
		String dateString = dateFormat.format(currentDate);
		System.out.println(dateString);
		sh.setShareDate(dateString);

		sharedao.create(sh);

//		/////////////////
		String to = email;
		String subject = video.getTitle();
		String body = "https://www.youtube.com/watch?v=" + video.getId();
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		props.put("mail.smtp.starttls.enable", "true");
		Session session = Session.getInstance(props, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("dongnnpc03139@fpt.edu.vn", "Dong0393618987");
				// return new PasswordAuthentication("hieuptpc03210@fpt.edu.vn", "PTH061203@!");
			}
		});
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("dongnnpc03139@fpt.edu.vn"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(subject);
			message.setText(body);
			Transport.send(message);
			System.out.println("thành cồng");
			request.setAttribute("message", "Email has been sent successfully");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
