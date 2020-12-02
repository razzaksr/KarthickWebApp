package serv;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

public class DbAPI
{
	public static List<Karthi> list()
	{
		List<Karthi> lot=new Vector<Karthi>();// model copy/ db copy
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			String qry="select * from karthi";
			PreparedStatement ps=con.prepareStatement(qry);
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
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lot;
	}
	public static Karthi getOne(String reg)
	{
		Karthi k=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			String qry="select * from karthi where regno=?";
			PreparedStatement ps=con.prepareStatement(qry);
			ps.setString(1, reg);
			ResultSet rs=ps.executeQuery();
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
			}
		}
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return k;
	}
	public static List<Karthi> filter(int min,int max)
	{
		List<Karthi> lot=new Vector<Karthi>();// model copy/ db copy
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","");
			String qry="select * from karthi where price between "+min+" and "+max;
			PreparedStatement ps=con.prepareStatement(qry);
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
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return lot;
	}
}
