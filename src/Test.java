import java.sql.*;
public class Test {
	public static void main(String args[]) throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver");   
		  
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-TSNRJGE:1521:xe","yasho","password");  
		  
		Statement stmt=con.createStatement();  
		ResultSet rs=stmt.executeQuery("select * from seeker_user");
		while(rs.next())  
			System.out.println(rs.getString(1));
		con.close();
	}
}
