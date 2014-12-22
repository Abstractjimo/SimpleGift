package simplegift.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class DBController {

	public static final String DB_CONN_CONFIG_FILE = "src/DBConnection.properties";
	public static final String CONN = "jdbc:mysql://simplegift.clqjp3e3svqt.us-east-1.rds.amazonaws.com:3306/SimpleGift?user=sigma&password=20141212";
	private String connection_str = null;
	private static DBController instance = null;
	
	protected DBController(){
		try {
    		Class.forName("com.mysql.jdbc.Driver").newInstance();
    		
    		//Properties prop = new Properties();
    		//InputStream is = new FileInputStream(DBController.DB_CONN_CONFIG_FILE);
    		//prop.load(is);
    		connection_str = "jdbc:mysql://simplegift.clqjp3e3svqt.us-east-1.rds.amazonaws.com:3306/SimpleGift?user=sigma&password=20141212"; 
    				//prop.getProperty("conn");
        } catch (Exception ex) {
            System.out.println("jdbc Error: " + ex.getMessage());
        }
	}
	
	public synchronized static Connection getDBConnection() throws SQLException{
		if (DBController.instance == null){
			DBController.instance = new DBController();
			return DriverManager.getConnection(DBController.instance.connection_str);
		} else{
			return DriverManager.getConnection(DBController.instance.connection_str);
		}
	}

}
