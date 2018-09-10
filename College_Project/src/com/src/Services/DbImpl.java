package com.src.Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.src.controller.*;
import com.src.Model.*;

public class DbImpl implements DbInterface {
	static Connection con=null;
	static{
		 try {
			Class.forName("org.h2.Driver");
			con=DriverManager.getConnection("jdbc:h2:~/test","sa", "");
			
		 } catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
	}
	public int RegisterUser(UserRegisterModel rm) throws SQLException, ClassNotFoundException {
		  PreparedStatement prepareStatement = con.prepareStatement("insert into registeruser values(?,?,?,?)");
			prepareStatement.setString(1, rm.getEmail());
			prepareStatement.setString(2, rm.getPassword());
			prepareStatement.setInt(3, rm.getAge());
			prepareStatement.setString(4, rm.getSex());
		    return prepareStatement.executeUpdate();	
	}
	public int City(CityModel cm) throws SQLException, ClassNotFoundException {
		PreparedStatement pm=con.prepareStatement("insert into place values(?,?,?,?)");
		pm.setString(1, cm.getCity());
		pm.setString(2, cm.getPlace());
		pm.setString(3, cm.getDesc());
		pm.setString(4, cm.getLocation());
		return pm.executeUpdate();
	}
	public int Contact(ContactModel cm) throws SQLException, ClassNotFoundException {
		PreparedStatement prepareStatement = con.prepareStatement("insert into contact values(?,?,?)");
		prepareStatement.setString(1, cm.getName());
		prepareStatement.setString(2, cm.getEmail());
		prepareStatement.setString(3,cm.getMessage());
	    return prepareStatement.executeUpdate();
	}


	public List getCity()  
	{
		try
		{
		PreparedStatement p=con.prepareStatement("select * from city");
		ResultSet rs= p.executeQuery();
		List<City> c=new ArrayList<>();
		while(rs.next())
		{
			City ct=new City();
			ct.setCity(rs.getString(1));
			c.add(ct);
		}
		return c;
	}
		catch(SQLException e)
		{
			e.printStackTrace();
			return null;
		}
	}
	public List getPlaces(String place) {
		PreparedStatement p;
		List<CityModel> city=new ArrayList<>();
		try {
			p = con.prepareStatement("select * from place where city=?");
			p.setString(1, place);
			ResultSet rs= p.executeQuery();
			while(rs.next())
			{
				CityModel c=new CityModel();
				c.setCity(rs.getString(1));
				c.setPlace(rs.getString(2));
				c.setDesc(rs.getString(3));
				c.setLocation(rs.getString(4));
				city.add(c);	
			}
			System.out.println(place);
			return city;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
	}
	public int City1(CityActualModel cm) throws SQLException, ClassNotFoundException {
		PreparedStatement prepareStatement = con.prepareStatement("insert into 	city values(?,?,?)");
		prepareStatement.setString(1, cm.getCity());
	    return prepareStatement.executeUpdate();
		
	}
	public int review(ReviewModel rm) throws SQLException, ClassNotFoundException {
		PreparedStatement ps=con.prepareStatement("insert into review values(?,?,?)");
		ps.setString(1, rm.getName());
		ps.setString(2, rm.getPlace());
		ps.setString(3, rm.getReview());
		return ps.executeUpdate();
	}
}
