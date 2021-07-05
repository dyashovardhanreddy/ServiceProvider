package com.controller;

import com.model.*;
import com.dao.*;
import java.sql.*;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class Register extends HttpServlet {
	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {
		String username=(String) request.getParameter("username");
		String password=(String) request.getParameter("password");
		String confirmpassword = (String) request.getParameter("confirmpassword");
		String role=request.getParameter("flexRadioDefault");
		HttpSession session=request.getSession();
		
		
		if(password.compareTo(confirmpassword)!=0 )  {
			session.setAttribute("page", "register.jsp");
			session.setAttribute("message", "Confirm Password doesn't match original password");
		}
		else if (!("provider".equals(role)) &&  !("seeker".equals(role))) {
			session.setAttribute("page", "register.jsp");
			session.setAttribute("message", "Select the role");
			
		}
		else if (checkUsername(username,role)) {
			session.setAttribute("page", "register.jsp");
			session.setAttribute("message", "Username Already Exists");
		}
		else {
			User user=new User();
			user.setUsername(username);
			user.setPassword(password);
			if("provider".equals(role)) {
				user.setProvider(true);
				user.setSeeker(false);
			}
			else{
				user.setProvider(false);
				user.setSeeker(true);
			}
			UserDao userdao=new UserDao();
			try {
				System.out.println("Check:In Try");
				System.out.println("Rows Added:"+userdao.registerUser(user));
				System.out.println(user);
				session.setAttribute("page", "home.jsp");
				session.setAttribute("message", "Account Successful Created");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				session.setAttribute("page", "register.jsp");
				session.setAttribute("message", "Error Occured");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				session.setAttribute("page", "register.jsp");
				session.setAttribute("message", "Error Occured");
				e.printStackTrace();
			}
			
		}
		response.sendRedirect("message.jsp");
	}
	private boolean checkUsername(String username,String role) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-TSNRJGE:1521:xe","yasho","password");  
			String sql="";
			if("provider".equals(role)) {
				sql="select * from provider_user where username=?";
			}
			else {
				sql="select * from seeker_user where username=?";
			}
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, username);
			System.out.println("Check:In CheckUserName");
			ResultSet rs=stmt.executeQuery();
			if(rs.next())
				return true;
			else
				return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
}
