package com.src.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.Model.CityModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/city")
public class city extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public city() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String city=request.getParameter("city");
		city=city.trim().toUpperCase();
		String desc=request.getParameter("desc");
		String location=request.getParameter("location");
		String place=request.getParameter("place");
		HashMap<String, String> error= new HashMap<>();
		
		if(city==null|city.length()==0)
			error.put("city", "City must be specified");
		else
			request.setAttribute("city", city);
		if(desc==null|desc.length()==0)
			error.put("desc", "Description must be specified");
		else
			request.setAttribute("desc", desc);
		if(location==null|location.length()==0)
			error.put("location","Location must be specified");
		else
			request.setAttribute("location", location);
		if(place==null|place.length()==0)
			error.put("place", "Place must be specified");
		else
			request.setAttribute("place", place);
		CityModel cm=new CityModel();
		if(error.isEmpty())
		{
			cm.setCity(city);
			cm.setDesc(desc);
			cm.setLocation(location);
			cm.setPlace(place);
			try
			{
				DbInterface d = Registrationfactory.getInstance();
				d.City(cm);
			    request.setAttribute("success","Successfully Updated");
				request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
			} 
			catch (Exception e)
			{
				request.setAttribute("success","Place Already Existing");
				request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
			}
		}
		else
		{
			request.setAttribute("error", error);
			request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
		}
	}

}
