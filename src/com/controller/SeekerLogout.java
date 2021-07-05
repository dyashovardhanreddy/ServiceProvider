package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SeekerLogout extends HttpServlet {
	protected void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("username");
		session.invalidate();
		response.sendRedirect("seekerLogin.jsp");
	}
}
