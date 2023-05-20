/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package farmmanagemnetsoftwares;
import java.sql.*;
/**
 *
 * @author Aimen Munawar
 * 5 steps for JDBC connectivity
 * 1. Register the driver class
 * 2. Creating the connection string
 * 3. Creating statement
 * 4. Executing MySQL Queries
 * 5. Closing the connection
 */
public class databaseConnection {
    Connection c;
    Statement s;
    public databaseConnection(){
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/farm", "root","root");
            s = c.createStatement();
        }catch(Exception error){
            System.out.println(error);
            error.printStackTrace();
        }
    }
}
