package com.src.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.Model.CityModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/getPlaces")
public class getPlaces extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public getPlaces() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String place=request.getParameter("city");
		DbInterface db = Registrationfactory.getInstance();
		List places = db.getPlaces(place);		
		request.setAttribute("place", places);
		request.getRequestDispatcher("city.jsp").forward(request, response);
	}

}
