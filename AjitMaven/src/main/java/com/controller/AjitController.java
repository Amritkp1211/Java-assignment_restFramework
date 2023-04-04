package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.Ajit;
import com.dao.AjitDao;

@Controller
public class AjitController {

	
	ApplicationContext a=new ClassPathXmlApplicationContext("Beans.xml");
	  AjitDao ajitDao=(AjitDao) a.getBean("ajitDao");
	
	  @RequestMapping(value="/", method = RequestMethod.GET)
	  public String index(HttpServletRequest request,HttpServletResponse response) {
		return "insert";
		  
	  }
	  
	  @RequestMapping(value="insert", method = RequestMethod.POST)
	  public String insert(HttpServletRequest request,HttpServletResponse response) {
		  
		  Ajit a=new Ajit();
		  a.setName(request.getParameter("name"));
		  a.setEmail(request.getParameter("email"));
		  ajitDao.insert(a);
		return "show";
		  
	  }
	  
	  @RequestMapping(value="edit", method = RequestMethod.POST)
	  public String edit(HttpServletRequest request,HttpServletResponse response) {
		     int id=Integer.parseInt(request.getParameter("id"));
		     Ajit s= ajitDao.getAjitian(id);
		    request.setAttribute("s",s);
		    
		return "update";
		  
	  }
	  
	  @RequestMapping(value="update", method = RequestMethod.POST)
	  public String update(HttpServletRequest request,HttpServletResponse response) {
		     
		     Ajit a=new Ajit();
		        a.setId(Integer.parseInt(request.getParameter("id")));
			  a.setName(request.getParameter("name"));
			  a.setEmail(request.getParameter("email"));
			  ajitDao.insert(a);
			  
			return "show";	  
	  }
	  
	  @RequestMapping(value="delete", method = RequestMethod.POST)
	  public String delete(HttpServletRequest request,HttpServletResponse response) {
		     int id=Integer.parseInt(request.getParameter("id"));
		     ajitDao.delete(id);
		    
		    
		return "show";
		  
	  }
	  
}
