package com.alperen.testdb;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/TestDb")
public class TestDB extends HttpServlet{

	/**
	 * a
	 */
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		String user = "root";
		String password = "root";
		
		String jdbcUrl = "jdbc:mysql://localhost:3306/bitirme_proje?useSSL=false&useUnicode=true&useLegacyDatetimeCode=false&serverTimezone=Turkey";
		String driver = "com.mysql.jdbc.Driver";
		
		try {
			
			PrintWriter out = response.getWriter();
			out.println("Veritabanina baglanti : " + jdbcUrl);
			Class.forName(driver);
			
			Connection myConn = DriverManager.getConnection(jdbcUrl, user, password);
			
			out.println(" ve Baglanti Basarili!");
			
			myConn.close();
			
		} catch (Exception e) {
			
			e.printStackTrace();
			throw new ServletException();
			
		}
		
		
	}
}
