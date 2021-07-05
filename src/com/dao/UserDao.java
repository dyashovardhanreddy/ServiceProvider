package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.model.User;

public class UserDao {

    public int registerUser(User user) throws ClassNotFoundException, SQLException {
    	String query="";
    	if(user.isProvider()) {
    		query = "INSERT INTO provider_user VALUES" +" (?, ?)";
    	}
    	else {
    		query = "INSERT INTO seeker_user VALUES" +" (?, ?)";
    	}
        int result = 0;
        Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-TSNRJGE:1521:xe","yasho","password");
        
//		System.out.println("Check:In UserDao:"+query);
            
		PreparedStatement stmt=con.prepareStatement(query);
		stmt.setString(1, user.getUsername());
		stmt.setString(2, user.getPassword());
         

         System.out.println(stmt);
            // Step 3: Execute the query or update query
        result = stmt.executeUpdate();
        con.commit();
        
//        System.out.println("Check:After Commit");

        
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}