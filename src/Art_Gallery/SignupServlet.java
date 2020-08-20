package Art_Gallery;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SignupServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		String url = "jdbc:mysql://localhost:3306/";
		String dbName = "mydb";
		String driver = "com.mysql.jdbc.Driver";

		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			Connection conn = DriverManager.getConnection(url + dbName, "root", "system");
			String aname = request.getParameter("fullname");
			//String ano = request.getParameter("ArtistId");
			//String state = request.getParameter("state");
			//String city = request.getParameter("city");
			//String pincode = request.getParameter("pincode");
			String pno = request.getParameter("mobileno");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password");

			PreparedStatement pst = (PreparedStatement) conn.prepareStatement("insert into artist(email,a_name,phone) values(?,?,?)");
			PreparedStatement pst1 = (PreparedStatement) conn.prepareStatement("insert into login values(?,1,?)");

			//pst.setString(1, ano);
			pst.setString(1, email);
			pst.setString(2, aname);
			//pst.setString(4, state);
			//pst.setString(5, city);
			//pst.setString(6, pincode);
			pst.setString(3, pno);
			//pst.setString(8, "G1");
		    pst1.setString(1,email);
		    pst1.setString(2,pwd);
		      
			int i = pst.executeUpdate();
			pst1.executeUpdate();
			// conn.commit();
			String msg = " ";
			if (i != 0) {
				msg = "Record has been inserted";
				pw.println("<font size='6' color=blue>" + msg + "</font>");
				RequestDispatcher rd = request.getRequestDispatcher("Artist.jsp");

				rd.forward(request, response);

			} else {
				msg = "failed to insert the data";
				pw.println("<font size='6' color=blue>" + msg + "</font>");
			}
			pst.close();
		} catch (Exception e) {
			pw.println(e);
		}

	}
}









