package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import com.model.*;
import com.dao.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/addjob")
public class AddJob extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String category=request.getParameter("category");
		String salary=request.getParameter("salary");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String image=request.getParameter("image");
		HttpSession session=request.getSession();
		System.out.println(category+":"+salary+":"+startdate+":"+enddate+":"+image);
		if("".equals(category) || "".equals(salary) || "".equals(startdate) || "".equals(enddate) || "".equals(image)) {
			session.setAttribute("page", "addjob.jsp");
			session.setAttribute("message", "Fill Every Field");
		}
		else if(checkSalary(salary)) {
			session.setAttribute("page", "addjob.jsp");
			session.setAttribute("message", "Enter Valid Salary");
		}
		else if(!image.endsWith("png") && !image.endsWith("jpeg") && !image.endsWith("jpg")) {
			session.setAttribute("page", "addjob.jsp");
			session.setAttribute("message", "Select Valid Image file");
		}
		else {
			Job job=new Job(category,image,salary,startdate,enddate);
			JobDao jobdao=new JobDao();
			try {
				jobdao.addJob(job);
				session.setAttribute("message", "Job Added Successfully!!!!");
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("message", "Error Occured ,Try Again");
			}
			session.setAttribute("page", "addjob.jsp");
			
		}
		response.sendRedirect("message.jsp");
	}
	private boolean checkSalary(String salary) {
		try {
			Integer.parseInt(salary);
			return false;
		}
		catch(Exception e) {
			return true;
		}
	}
}
