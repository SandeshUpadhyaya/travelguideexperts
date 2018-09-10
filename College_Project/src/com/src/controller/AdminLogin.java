package com.src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.src.Services.AdminValidate;
import com.src.Services.Validate;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AdminLogin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("user");
		String psw=request.getParameter("psswd");
		if(AdminValidate.checkAdmin(name, psw))
		{
			request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
			HttpSession session=request.getSession();  
		}
		else
		{
			request.setAttribute("fail", "Username and passwords do not match");
			request.getRequestDispatcher("admin.jsp").forward(request, response);
		}
	}

}
