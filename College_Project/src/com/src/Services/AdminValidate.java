package com.src.Services;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminValidate {
	public static boolean checkAdmin(String name,String password)
	   {
			boolean st =false;
		     try
		     {
			         Class.forName("org.h2.Driver");
			         Connection con=DriverManager.getConnection("jdbc:h2:~/test","sa", "");
			         PreparedStatement ps =con.prepareStatement("select * from admin where user=? and password=?");
			         ps.setString(1, name);
			         ps.setString(2, password);
			         ResultSet rs =ps.executeQuery();
			         st = rs.next();
		     }
		     catch(Exception e)
		    {
			          e.printStackTrace();
			 }
		    return st;                
		}  

}
