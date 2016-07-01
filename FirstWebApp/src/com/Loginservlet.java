package com;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor.
    public Loginservlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	   response.setContentType("text/html");
	   
	   String name=request.getParameter("userName");
	   
	   String password=request.getParameter("userPass");
	   
	   if(name.equalsIgnoreCase("ANONYMOUS")&&password.equalsIgnoreCase("123"))
	   {
		   RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");  
		   rd.forward(request, response);
	   }
	   else
	   {
		   RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
		   rd.forward(request, response);
	   }
	   
	   
	   
			
		}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
