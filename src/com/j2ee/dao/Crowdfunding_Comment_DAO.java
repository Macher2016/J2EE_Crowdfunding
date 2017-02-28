package com.j2ee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.j2ee.crowdfunding_comment.Crowdfunding_Comment;



public class Crowdfunding_Comment_DAO {
	 private Connection conn = null;       //数据库连接对象
     private PreparedStatement pstmt=null;     //数据库操作对象
     
     public Crowdfunding_Comment_DAO(){
    	 this.conn = conn;
     }
     
     public int addCrowdfunding_Comment(Crowdfunding_Comment crowdfunding_Comment){//往数据库中增加Crowdfunding_Comment数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int deleteCrowdfunding_Comment(int commentID){//在数据库中根据ID删除Crowdfunding_Comment数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int updateCrowdfunding_Comment(int commentID,Crowdfunding_Comment crowdfunding_Comment){//在数据库中根据ID更新Crowdfunding_Comment数据
         int flag = 0;
     	
     	return flag;
     }
     
     public Crowdfunding_Comment findCrowdfunding_Comment(int commentID){//在数据库中根据ID查询Crowdfunding_Comment数据
    	 Crowdfunding_Comment crowdfunding_Comment = new Crowdfunding_Comment();
     	
     	return crowdfunding_Comment;
     }
     
     public ArrayList<Crowdfunding_Comment> findAll(){//在数据库中查询所有Crowdfunding_Info数据
     	ArrayList<Crowdfunding_Comment> list = new ArrayList<Crowdfunding_Comment>();
     	
     	return list;
     }
}
