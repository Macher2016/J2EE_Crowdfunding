package com.j2ee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.j2ee.user.User;

public class User_DAO {
	 private Connection conn = null;       //数据库连接对象
     private PreparedStatement pstmt=null;     //数据库操作对象
     
     public User_DAO(){
    	 this.conn = conn;
     }
     
     public int addUser(User user){//往数据库中增加User数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int deleteUser(int userID){//在数据库中根据ID删除User数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int updateUser(int userID,User user){//在数据库中根据ID更新User数据
         int flag = 0;
     	
     	return flag;
     }
     
     public User findUser(int userID){//在数据库中根据ID查询User数据
    	 User user = new User();
     	
     	return user;
     }
     
     public ArrayList<User> findAll(){//在数据库中查询所有User数据
     	ArrayList<User> list = new ArrayList<User>();
     	
     	return list;
     }
}
