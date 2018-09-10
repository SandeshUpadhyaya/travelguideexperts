package com.src.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.Model.CityActualModel;
import com.src.Model.CityModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/city1")
public class city1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public city1() {
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
		CityActualModel cm=new CityActualModel();
		if(error.isEmpty())
		{
			cm.setCity(city);
			try
			{
				DbInterface d = Registrationfactory.getInstance();
				d.City1(cm);
			    request.setAttribute("success1","Successfully Updated");
				request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
			} 
			catch (Exception e)
			{
				e.printStackTrace();
				request.setAttribute("success1","CIty ALready EXisting");
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

