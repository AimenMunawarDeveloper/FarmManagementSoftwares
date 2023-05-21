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
        try{/*because my sql iss an external entity so errors can come*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            /*step 1*/
            /*Class is a java class that has static method named forname*/
            c = DriverManager.getConnection("jdbc:mysql://localhost:3306/farm", "root","root");
           /* step2*/
           /* driver manageer class has static method of getconnection*/
            s = c.createStatement();
            /*creating statment*/
        }catch(Exception error){
            System.out.println(error);
            error.printStackTrace();
        }
    }
}