package com.example.servlet;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.ArrayList;

public class MainServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, 
			HttpServletResponse response)throws ServletException,IOException{
		
			// get parameter from form and check if we getting data empty or null:
		 	String user = request.getParameter("user");
	        if (user.isEmpty() || user == null) {
	            request.setAttribute("user", null);
	        } else {
	           request.setAttribute("user", user);
	        }
	        
	        String[] movieList = new String[]{"Matrix Revolutions", "Kill Bill", "Boondock Saints"};
	        String[] movieList2 = new String[]{"Amelie", "Return of the King", "Mean Girls"};
	        // create another Array List of String Arrays:
	        ArrayList<String[]> bigMovieListOfArrays = new ArrayList<String[]>();
	        bigMovieListOfArrays.add(movieList); // add to this array another array of String
	        bigMovieListOfArrays.add(movieList2);// add to this array another array of String
	        request.setAttribute("movieArraysOfArrays", bigMovieListOfArrays); // the set this to request scope
	        
	        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
	        requestDispatcher.forward(request, response);
	}
}
