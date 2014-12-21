package simplegift.controller;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class DBController {

	public static final String DB_CONN_CONFIG_FILE = "resources/DBConnection.properties";
	
	public DBController(){
		try {
    		Class.forName("com.mysql.jdbc.Driver").newInstance();
        } catch (Exception ex) {
            System.out.println("jdbc Error: " + ex.getMessage());
        }
	}
	
	
	
	public static void main(String[] args){
		Properties prop = new Properties();
		String fileName = "resources/DBConnection.properties";
		InputStream is;
		try {
			is = new FileInputStream(fileName);
			prop.load(is);
			System.out.println(prop.getProperty("conn"));
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
	}
}
