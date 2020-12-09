package crud.basic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HandleFind
 */
public class HandleFind extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HandleFind() {
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
		List<Karthi> lot=new ArrayList<Karthi>();
		String beg=request.getParameter("start");
		String end=request.getParameter("end");
		String typ=request.getParameter("type");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			if(beg!=""&&end==""&&typ=="")
			{
				System.out.println("BAsed on origin");
				String qry="select * from karthi where origin=?";
				PreparedStatement ps=con.prepareStatement(qry);
				ps.setString(1, beg);
				ResultSet rs=ps.executeQuery();
				Karthi k;
				while(rs.next())
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
					lot.add(k);
				}
			}
			else if(beg==""&&end!=""&&typ=="")
			{
				System.out.println("BAsed on stop");
				String qry="select * from karthi where end=?";
				PreparedStatement ps=con.prepareStatement(qry);
				ps.setString(1, end);
				ResultSet rs=ps.executeQuery();
				Karthi k;
				while(rs.next())
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
					lot.add(k);
				}
			}
			else if(beg==""&&end==""&&typ!="")
			{
				System.out.println("BAsed on type "+typ);
				String qry="select * from karthi where type=?";
				PreparedStatement ps=con.prepareStatement(qry);
				ps.setString(1, typ);
				ResultSet rs=ps.executeQuery();
				Karthi k;
				while(rs.next())
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
					lot.add(k);
				}
			}
			RequestDispatcher rd=request.getRequestDispatcher("list.jsp");
			request.setAttribute("all", lot);
			rd.forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
