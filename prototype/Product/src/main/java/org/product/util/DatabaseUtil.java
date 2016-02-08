package org.product.util;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Component;

@Component
public class DatabaseUtil {
	
	private static Connection connection;
	
	public synchronized static void setupConnection(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/productcatalog","root", "root");
		}catch(Exception ex){
			connection=null;
		}
		
	}
	
	public static  Connection getConnection(){
		
		if(connection==null){
			setupConnection();
		}
		 return connection;
	}
	
	public static synchronized void  closeConnection(){
		
		try{
		if(connection!=null){
			connection.close();
		}
		}catch(Exception ex){
			
		}
	}

}
