package com.comeneat.testdb;

import java.sql.Connection;
import java.sql.DriverManager;

public class TestJdbc {

 public static void main(String[] args) {

  String jdbcUrl = "jdbc:mysql://localhost:3306/bitirme_proje?useSSL=false&useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
  String user = "root";
  String pass = "root";
  
  try {
   System.out.println("Connecting to database: " + jdbcUrl);
   
   Connection myConn =
     DriverManager.getConnection(jdbcUrl, user, pass);
   
   System.out.println("Connection successful!!!");
   
  }
  catch (Exception exc) {
   exc.printStackTrace();
  }
  
 }

}