package com.src.controller;

import java.io.IOException;

import javax.servlet.Registration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.Model.ContactModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/contact")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public contact() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String message=request.getParameter("message");
		ContactModel cm=new ContactModel();
		cm.setEmail(email);
		cm.setName(name);
		cm.setMessage(message);
		try
		{
			DbInterface di = Registrationfactory.getInstance();
			di.Contact(cm);
			request.setAttribute("success", "Thank You for sharing the feedback with us.");
			request.getRequestDispatcher("contact.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.setAttribute("fail", " Sorry type the information again");
			request.getRequestDispatcher("contact.jsp").forward(request, response);
		}
		

	}

}
