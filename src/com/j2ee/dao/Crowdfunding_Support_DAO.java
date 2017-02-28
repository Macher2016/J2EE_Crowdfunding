package com.j2ee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.j2ee.crowdfunding_support.Crowdfunding_Support;



public class Crowdfunding_Support_DAO {
	 private Connection conn = null;       //数据库连接对象
     private PreparedStatement pstmt=null;     //数据库操作对象
     
     public Crowdfunding_Support_DAO(Connection conn){
     	this.conn = conn;
     }
     
     public int addCrowdfunding_Support(Crowdfunding_Support crowdfunding_Support){//往数据库中增加Crowdfunding_Support数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int deleteCrowdfunding_Info(int supportID){//在数据库中根据ID删除Crowdfunding_Support数据
     	int flag = 0;
     	
     	return flag;
     }
     
     public int updateCrowdfunding_Info(int supportID,Crowdfunding_Support crowdfunding_Support){//在数据库中根据ID更新Crowdfunding_Support数据
         int flag = 0;
     	
     	return flag;
     }
     
     public Crowdfunding_Support findCrowdfunding_Info(int supportID){//在数据库中根据ID查询Crowdfunding_Support数据
    	 Crowdfunding_Support crowdfunding_Support = new Crowdfunding_Support();
     	
     	return crowdfunding_Support;
     }
     
     public ArrayList<Crowdfunding_Support> findAll(){//在数据库中查询所有Crowdfunding_Support数据
     	ArrayList<Crowdfunding_Support> list = new ArrayList<Crowdfunding_Support>();
     	
     	return list;
     }
}
