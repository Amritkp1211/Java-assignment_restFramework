package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Sirohi;
import com.dao.SirohiDao;
import com.util.SirohiUtil;

@WebServlet("/SirohiController")
public class SirohiController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   String action=request.getParameter("action");
	     
	   if(action.equalsIgnoreCase("insert")) {
		   Sirohi s=new Sirohi();
		   s.setName(request.getParameter("name"));
		   s.setEmail(request.getParameter("email"));
		   s.setAddress(request.getParameter("address"));
		   s.setDob(request.getParameter("dob"));
		   s.setMobile(Long.parseLong(request.getParameter("mobile")));
		   s.setGender(request.getParameter("gender"));
		   s.setQuali(request.getParameter("quali"));
		   s.setHobby(request.getParameter("hobby"));
		   
		  SirohiDao.insertSirohi(s);
		  response.sendRedirect("show.jsp");
	   }
	   
	   else if(action.equalsIgnoreCase("edit")) {
		   int id=Integer.parseInt(request.getParameter("id"));
		    Sirohi s=SirohiDao.getSirohi(id);
		    request.setAttribute("s", s);
		    request.getRequestDispatcher("update.jsp").forward(request, response);
		    
	   }
	   else if(action.equalsIgnoreCase("update")) {
		       Sirohi s=new Sirohi();
		   s.setId(Integer.parseInt(request.getParameter("id")));
		   s.setName(request.getParameter("name"));
		   s.setEmail(request.getParameter("email"));
		   s.setAddress(request.getParameter("address"));
		   s.setDob(request.getParameter("dob"));
		   s.setMobile(Long.parseLong(request.getParameter("mobile")));
		   s.setGender(request.getParameter("gender"));
		   s.setQuali(request.getParameter("quali"));
		   s.setHobby(request.getParameter("hobby"));
		   SirohiDao.updateSirohi(s);
		   response.sendRedirect("show.jsp");
		   
	   }
	   else if(action.equalsIgnoreCase("delete")) {
		   int id=Integer.parseInt(request.getParameter("id"));
		    SirohiDao.deleteSirohi(id);
		    response.sendRedirect("show.jsp");
	   
	}
	}
}
