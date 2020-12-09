package crud.basic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HandleEdit
 */
public class HandleEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String kar=request.getParameter("single");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			String qry="select * from karthi where regno=?";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, kar);
			ResultSet rs=ps.executeQuery();
			Karthi k;
			if(rs.next())
			{
				k=new Karthi();
				k.setRegno(rs.getString("regno"));
				k.setAm(rs.getString("am"));
				k.setOrigin(rs.getString("origin"));
				k.setPrice(rs.getInt("price"));
				k.setSeats(rs.getInt("seats"));
				k.setStop(rs.getString("stop"));
				k.setTravels(rs.getString("travels"));
				k.setType(rs.getString("type"));
				RequestDispatcher dis=request.getRequestDispatcher("update.jsp");
				request.setAttribute("one", k);
				dis.forward(request, response);
			}
			else
			{
				RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
				dis.forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
