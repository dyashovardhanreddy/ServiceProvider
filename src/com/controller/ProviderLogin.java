package com.controller;

import javax.servlet.http.HttpServlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.ProviderLoginDao;

@WebServlet("/providerLogin")
public class ProviderLogin extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		ProviderLoginDao dao=new ProviderLoginDao();
		HttpSession session=request.getSession();
		try {
			if(dao.checkCredentials(username,password)) {
				session =request.getSession();
				session.setAttribute("username", username);
				response.sendRedirect("providerhome.jsp");
			}
			else {
				session.setAttribute("page", "providerLogin.jsp");
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
