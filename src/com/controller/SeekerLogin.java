package com.controller;

import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.SeekerLoginDao;

@WebServlet("/seekerLogin")
public class SeekerLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		SeekerLoginDao dao=new SeekerLoginDao();
		HttpSession session=request.getSession();
		try {
			if(dao.checkCredentials(username,password)) {
				session.setAttribute("username", username);
				response.sendRedirect("home.jsp");
			}
			else {
				session.setAttribute("page", "seekerLogin.jsp");
				session.setAttribute("message", "Invalid Credentails");
				response.sendRedirect("message.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("seekerLogin.jsp");
			e.printStackTrace();
		}
	}
}
