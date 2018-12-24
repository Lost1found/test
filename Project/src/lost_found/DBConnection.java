package lost_found;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	private static String url="jdbc:mysql://localhost:3306/lost_and_found"+
            "?user=root&password+123456&characterEncoding=utf-8"
			   +"&serverTimezone=UTC";
	   private static String drivername="com.mysql.jdbc.Driver";
	   static {
		   try {
			   Class.forName(drivername);
		   }catch(ClassNotFoundException e) {
			   e.printStackTrace();
		   }
	   }
	   public static Connection getConnection() {
		   try {
			   Connection conn=DriverManager.getConnection(url);
			   return conn;
		   }catch(SQLException e){
			   e.printStackTrace();
			   return null;
		   }
	   }
	   public static void free(Connection conn,Statement state,ResultSet rs) {
		   try {
			   if(rs!=null)
				   rs.close();
		   }catch(SQLException e) {
			   e.printStackTrace();
		   }finally {
			   try {
				   if(state!=null)
					   state.close();
			   }catch(SQLException e) {
				   e.printStackTrace();
			   }finally {
				   try {
					   if(conn!=null)
						   conn.close();
				   }catch(SQLException e) {
					   e.printStackTrace();
				   }
			   }
		   }
	   }
}
