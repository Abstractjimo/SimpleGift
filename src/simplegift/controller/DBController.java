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

	public static final String DB_CONN_CONFIG_FILE = "resources/DBConnection.properties";
	private String connection_str = null;
	private static DBController instance = null;
	
	protected DBController(){
		try {
    		Class.forName("com.mysql.jdbc.Driver").newInstance();
    		
    		Properties prop = new Properties();
    		InputStream is = new FileInputStream(DBController.DB_CONN_CONFIG_FILE);
    		prop.load(is);
    		connection_str = prop.getProperty("conn");
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
