package org.testmybatis;

import java.sql.CallableStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Test {
	public static void main(String[] args) {
		try{   
		    //����MySql��������   
		    Class.forName("com.mysql.jdbc.Driver") ;   
		    }catch(ClassNotFoundException e){   
		    System.out.println("�Ҳ������������� ����������ʧ�ܣ�");   
		    e.printStackTrace() ;   
		    }   
		
		String url = "jdbc:mysql://localhost:3306/mybatis" ;    
	     String username = "shiyf" ;   
	     String password = "shiyf" ;   
	     try{   
	    	 Connection con =    
	             (Connection) DriverManager.getConnection(url , username , password ) ;   
	    	 Statement stmt = con.createStatement() ;   
	    	ResultSet rs= stmt.executeQuery("select * from userinfo"); 
	    	System.out.println(rs);
	    	while(rs.next()){
	    		System.out.println(rs.getString(1));
	    	}
	     }catch(SQLException se){   
		    System.out.println("���ݿ�����ʧ�ܣ�");   
		    se.printStackTrace() ;   
	     }   
	}
}
