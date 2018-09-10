package com.src.controller;
import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.src.Model.UserRegisterModel;
import com.src.Services.DbInterface;
import com.src.Services.Registrationfactory;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserRegister() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("uname");
		String passw=request.getParameter("pswd");
		String cpassw=request.getParameter("cpass");
		String age=request.getParameter("age");
		String sex=request.getParameter("sex");
		HashMap<String, String> error=new HashMap<>();
		
		if(email==null|email.length()==0)
			error.put("email", "Email must be specified");
		else
			request.setAttribute("email", email);
		if(passw==null|passw.length()==0)
			error.put("passw", "Password must be specified");
		if(age==null|age.length()==0)
		{
			error.put("age", " Age must be specified");
		}
		else
		{
			try
			{
				int age1=Integer.parseInt(age);
				if(age1>10 && age1<100)
				{
					request.setAttribute("age", age);
				}
				else
				{
					error.put("age", " Enter age between 10 and 100 only");
				}
			}
			catch(Exception e)
			{
				error.put("age", "Enter a valid integer age");
			}
		}
		if(sex==null|sex.length()==0)
			error.put("sex", "Sex must be specified");
		else
			request.setAttribute("sex", sex);
		if(!cpassw.equals(passw))
		{
			error.put("cpassw", "Password and Confirm password should be same");
		}
		else
		{
			request.setAttribute("cpassw", cpassw);
		}
		UserRegisterModel rm=new UserRegisterModel();
		if(error.isEmpty())
		{
			rm.setEmail(email);
			rm.setPassword(passw);
			rm.setCpassword(cpassw);
			rm.setSex(sex);
			rm.setAge(Integer.parseInt(age));
			try
			{
				DbInterface d = Registrationfactory.getInstance();
				d.RegisterUser(rm);
				request.setAttribute("success","Successfully Registered");
				request.getRequestDispatcher("user.jsp").forward(request, response);
			} 
			catch (Exception e)
			{
				e.printStackTrace();
				request.setAttribute("fail", " Username already taken");
				request.getRequestDispatcher("user.jsp").forward(request, response);
			}
		}
	}
}
		
		

