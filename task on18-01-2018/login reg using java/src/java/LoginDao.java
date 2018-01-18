/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author NIIT
 */
import java.sql.*;  
  
public class LoginDao {  
public static boolean validate(String name,String pass){  
boolean status=false;  
try{  
Class.forName("com.Mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:Mysql://localhoost:3306/login","root","");  
      
PreparedStatement ps=con.prepareStatement(  
"select * from userreg where name=? and pass=?");  
ps.setString(1,name);  
ps.setString(2,pass);  
      
ResultSet rs=ps.executeQuery();  
status=rs.next();  
          
}catch(Exception e){System.out.println(e);}  
return status;  
}  
}  
