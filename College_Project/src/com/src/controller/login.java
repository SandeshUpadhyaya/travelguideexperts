package com.src.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;
import com.src.Services.Validate;

@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public login() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("email");
		String psw=request.getParameter("psw");
		if(Validate.checkUser(name, psw))
		{
			DbInterface db = Registrationfactory.getInstance();
			List city = db.getCity();
			HttpSession session=request.getSession();
			session.setAttribute("city",city);
			request.getRequestDispatcher("city.jsp").forward(request, response);
			 
		}
		else
		{
			request.setAttribute("fail1", "Username and passwords do not match");
			request.getRequestDispatcher("user.jsp").forward(request, response);
		}
	}
}

