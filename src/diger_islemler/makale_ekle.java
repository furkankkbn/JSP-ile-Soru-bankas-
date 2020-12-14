package diger_islemler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class makale_ekle
 */
@WebServlet("/makale_ekle")
public class makale_ekle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public makale_ekle() {
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
		Date date=new Date();
		String Baslik = request.getParameter("makale_baslik");
		String Icerik = request.getParameter("makale_icerik");
		String Secenek = request.getParameter("secenek");
		String Tarih = date.toString();
		String Email = request.getParameter("yazar_email");
		Connection connection = null;
		PreparedStatement pstatement = null;
		PrintWriter out = response.getWriter();
		int updateQuery = 0;
		
		if(Baslik != "") {

			try {
				Class.forName("com.mysql.jdbc.Driver");
				connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/makale_sistemi?useSSL=false", "root", "squad1453");
				String queryString = "insert into beklenen_makaleler(makale_baslik, makale_icerik, makaler_yazari, makale_tarih, makale_ilgiAlani) values (?, ?, ?, ?, ?)";
				pstatement = connection.prepareStatement(queryString);

				pstatement.setString(1, Baslik);
				pstatement.setString(2, Icerik);
				pstatement.setString(3, Email);
				pstatement.setString(4, Tarih);
				pstatement.setString(5, Secenek);
				updateQuery = pstatement.executeUpdate();

				if (updateQuery != 0) {
					response.sendRedirect("Yazar/Makalelerim.jsp");
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
