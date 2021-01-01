package unitTest;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;

public class CarRentalFunctions {
    public CarRentalFunctions() {
    	Connection connection = null;
        try {
     
    	  // Load the MySQL JDBC driver
    	 
    	  String driverName = "com.mysql.jdbc.Driver";
    	 
    	  Class.forName(driverName);
    	 
    	 
    	  // Create a connection to the database
    	 
    	  String serverName = "localhost";
    	 
    	  String schema = "mydb";
    	 
    	  String url = "jdbc:mysql://" + serverName +  "/" + schema;
    	 
    	  String username = "root";
    	 
    	  String password = "";
    	 
    	  connection = DriverManager.getConnection(url, username, password);
    	 
    	   
    	 
    	  System.out.println("Successfully Connected to the database!");
    	 
    	   
    	    } catch (ClassNotFoundException e) {
    	 
    	  System.out.println("Could not find the database driver " + e.getMessage());
    	    } catch (SQLException e) {
    	 
    	  System.out.println("Could not connect to the database " + e.getMessage());
    	  }
    	 
    	    try {
    	 
    	 
    	// Get a result set containing all data from test_table
    	 
    	Statement statement = connection.createStatement();
    	 
//    	ResultSet results = statement.executeQuery("SELECT * FROM customer");
    	for(int i=0; i<1;i++){
    		ResultSet results = statement.executeQuery("SELECT * FROM customer");
    	    while(results.next()) {
    	        String Name = results.getString("name");
    	        System.out.print(i);
    	        System.out.println("Name:"+Name);
    	    }
    	}
    }catch (Exception e){
    	
    }
    }
	

	
    private static String userId[] = {"amlan", "safwan", "nibraj", "test", "amlan"};
    private static String password[] = {"amlan", "abcd", "0000", "1234", "nibu123"};
    private static String cars[] = {"Lancia", "Toyota GT-83", "hiace", "grey hiace", "mercedez benz"};
    private static String adminId="admin";
    private static String adminPass="admin";
    
    public String loginCheck(String id, String pass) {
        CarRentalFunctions H = new CarRentalFunctions();
        String uid=id;
        String upass=pass;
        String message="fail";
        for (int i = 0; i < H.userId.length ; i++) {
            if(H.userId[i].equals(uid)) {
                if (H.password[i].equals(upass)){
                    message = "pass";
                }else {
                message = "fail";
                }
            }
        }
        return message;
    }

    public String adminLoginCheck(String id, String pass) {
        CarRentalFunctions H = new CarRentalFunctions();
        String uid=id;
        String upass=pass;
        String message="fail";
            if(H.adminId.equals(uid) && H.adminPass.equals(upass)) {
                    message = "pass";
                }else {
                message = "fail";
            }
        return message;    
    }

    public String addCarCheck(String carName,String reg,String milage,String fare) {
        CarRentalFunctions H = new CarRentalFunctions();
        String cName=carName;
        String r=reg;
        String mil=milage;
        String f=fare;
        String message="added";
        for (int i = 0; i < H.cars.length ; i++) {
            if(H.cars[i].equals(cName)) {
                message = "exists";
            }
        }
        return message;
    }

    public String bookingCheck(String start,String end,int days) {
        String jStart=start;
        String jEnd=end;
        int day=days;
        String result="fail";
        if (jStart!="" && jEnd!="") 
            result = "booked";
        return result;
    }
}