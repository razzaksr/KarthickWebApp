package crud.basic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HandleCreate
 */
public class HandleCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleCreate() {
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
		String a=request.getParameter("regno");
		String b=request.getParameter("travels");
		String c=request.getParameter("origin");
		String d=request.getParameter("stop");
		String e=request.getParameter("type");
		String f=request.getParameter("am");
		String g=request.getParameter("price");
		String h=request.getParameter("seats");
		
		// connection procedure
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			String qry="insert into karthi(regno,travels,origin,stop,type,am,price,seats) values(?,?,?,?,?,?,?,?)";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, a);ps.setString(2, b);ps.setString(3, c);ps.setString(4, d);
			ps.setString(5, e);ps.setString(6, f);ps.setInt(7, Integer.parseInt(g));
			ps.setInt(8, Integer.parseInt(h));
			int ret=ps.executeUpdate();
			RequestDispatcher dis=request.getRequestDispatcher("create.jsp");
			if(ret!=0)
			{	
				request.setAttribute("info", "Record added");
			}
			else
			{
				request.setAttribute("info", "Record not added");
			}
			dis.forward(request, response);
		} catch (ClassNotFoundException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
	}

}
