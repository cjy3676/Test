package Test.Jdbc;

import java.sql.*;

public class Connect {
	   static String aa="jdbc:mysql://localhost:3307/gibon?useSSL=false";
	   static String bb="root";
	   static String cc="1234";
	   public static Connection getConnection() throws SQLException {
	     Connection conn = DriverManager.getConnection(aa,bb,cc);
	     
	     return conn;
	   }
}
