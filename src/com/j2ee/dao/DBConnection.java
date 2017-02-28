package com.j2ee.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
       private static final String Driver = "com.mysql.jdbc.Driver";
       private static final String URL = "jdbc:mysql://localhost:3306/j2ee_crowdfunding";
       private static final String USER = "root";
       private static final String PASSWORD = "root";
       private Connection conn = null;
       
       public DBConnection() throws Exception{
    	   Class.forName(Driver);//用反射加载数据库驱动
    	   this.conn = DriverManager.getConnection(URL,USER,PASSWORD);
       }
       
       public Connection getConnection(){
    	   return this.conn;
       }
       
       public void close() throws Exception{//关闭数据库
    	   if(this.conn!=null){
    		   this.conn.close();
    	   }
       }
}
