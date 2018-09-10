package com.src.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;

import com.src.Model.ReviewModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/review")
public class review extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public review() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name= request.getParameter("uname");
		String place=request.getParameter("places");
		System.out.println(place);
		String review=request.getParameter("review");
		System.out.println(place);
		ReviewModel rm=new ReviewModel();
		rm.setName(name);
		rm.setPlace(place);
		rm.setReview(review);
		try
		{
			DbInterface d=Registrationfactory.getInstance();
			d.review(rm);
			request.setAttribute("success", "Thank you for the review");
			request.getRequestDispatcher("userReviews.jsp").forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();
			request.setAttribute("fail", " Sorry please give the review again");
			request.getRequestDispatcher("userReviews.jsp").forward(request, response);
		}
	}

}
