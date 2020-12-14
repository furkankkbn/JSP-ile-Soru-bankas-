package admin_islemleri;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Hoca_Kaydol
 */
@WebServlet("/Hoca_Kaydol")
public class Hoca_Kaydol extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Hoca_Kaydol() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		String Ad = request.getParameter("hoca_adi");
		String Soyad = request.getParameter("hoca_soyadi");
		String Email = request.getParameter("hoca_email");
		String KullaniciAdi = request.getParameter("hoca_kullaniciAdi");
		String Sifre = request.getParameter("hoca_sifre");
		String sifre_tekrar = request.getParameter("hoca_sifre_tekrar");
		String ilgiAlani = request.getParameter("hoca_ilgiAlani");
		String Telefon = request.getParameter("hoca_tel");

		Connection connection = null;
		PreparedStatement pstatement = null;
		PrintWriter out = response.getWriter();
		int updateQuery = 0;
		
		if(Sifre == sifre_tekrar) {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/makale_sistemi?useSSL=false", "root", "squad1453");
				String queryString = "insert into hocalar(hoca_adi, hoca_soyadi, hoca_email, hoca_kullaniciAdi, hoca_sifre, hoca_ilgiAlani, hoca_tel) values (?, ?, ?, ?, ?, ?, ?)";
				pstatement = connection.prepareStatement(queryString);

				pstatement.setString(1, Ad);
				pstatement.setString(2, Soyad);
				pstatement.setString(3, Email);
				pstatement.setString(4, KullaniciAdi);
				pstatement.setString(5, Sifre);
				pstatement.setString(6, ilgiAlani);
				pstatement.setString(7, Telefon);

				updateQuery = pstatement.executeUpdate();

				if (updateQuery != 0) {
					response.sendRedirect("Hoca/hoca_SignIn.jsp");
				} else {
					out.println("\n404 Hata oluþtu");
				}

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			
		}

	}

}
