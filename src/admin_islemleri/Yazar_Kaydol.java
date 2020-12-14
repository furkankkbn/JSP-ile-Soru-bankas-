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
 * Servlet implementation class Yazar_Kaydol
 */
@WebServlet("/Yazar_Kaydol")
public class Yazar_Kaydol extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Yazar_Kaydol() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String Ad = request.getParameter("yazar_adi");
		String Soyad = request.getParameter("yazar_soyadi");
		String Email = request.getParameter("yazar_email");
		String KullaniciAdi = request.getParameter("yazar_kullaniciAdi");
		String Sifre = request.getParameter("yazar_sifre");
		String sifre_tekrar = request.getParameter("yazar_sifre_tekrar");

		Connection connection = null;
		PreparedStatement pstatement = null;
		PrintWriter out = response.getWriter();
		int updateQuery = 0;
		
		if(Sifre == sifre_tekrar) {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/makale_sistemi?useSSL=false", "root", "squad1453");
				String queryString = "insert into makale_yazari(yazar_adi, yazar_soyadi, yazar_email, yazar_kullaniciAdi, yazar_sifre) values (?, ?, ?, ?, ?)";
				pstatement = connection.prepareStatement(queryString);

				pstatement.setString(1, Ad);
				pstatement.setString(2, Soyad);
				pstatement.setString(3, Email);
				pstatement.setString(4, KullaniciAdi);
				pstatement.setString(5, Sifre);

				updateQuery = pstatement.executeUpdate();

				if (updateQuery != 0) {
					response.sendRedirect("Yazar/yazar_SignIn.jsp");
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
