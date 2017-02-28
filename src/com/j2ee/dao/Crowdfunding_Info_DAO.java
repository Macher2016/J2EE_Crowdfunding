package com.j2ee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.j2ee.crowdfunding_info.Crowdfunding_Info;

public class Crowdfunding_Info_DAO {
        private Connection conn = null;       //数据库连接对象
        private PreparedStatement pstmt=null;     //数据库操作对象
        
        public Crowdfunding_Info_DAO(Connection conn){
        	this.conn = conn;
        }
        
        public int addCrowdfunding_Info(Crowdfunding_Info crowdfunding_Info){//往数据库中增加Crowdfunding_Info数据
        	int flag = 0;
        	
        	return flag;
        }
        
        public int deleteCrowdfunding_Info(int descriptionID){//在数据库中根据ID删除Crowdfunding_Info数据
        	int flag = 0;
        	
        	return flag;
        }
        
        public int updateCrowdfunding_Info(int descriptionID,Crowdfunding_Info crowdfunding_Info){//在数据库中根据ID更新Crowdfunding_Info数据
            int flag = 0;
        	
        	return flag;
        }
        
        public Crowdfunding_Info findCrowdfunding_Info(int descriptionID){//在数据库中根据ID查询Crowdfunding_Info数据
        	Crowdfunding_Info crowdfunding_Info = new Crowdfunding_Info();
        	
        	return crowdfunding_Info;
        }
        
        public ArrayList<Crowdfunding_Info> findAll(){//在数据库中查询所有Crowdfunding_Info数据
        	ArrayList<Crowdfunding_Info> list = new ArrayList<Crowdfunding_Info>();
        	
        	Statement stm;
			try {
				stm = conn.createStatement();
				ResultSet rs=stm.executeQuery("select * from t_crowdfunding_info");
				
				while(rs.next()){
					Crowdfunding_Info crowdfunding_Info = new Crowdfunding_Info();
					crowdfunding_Info.setDescriptionID(rs.getInt("descriptionID"));
					crowdfunding_Info.setDescription(rs.getString("description"));
					crowdfunding_Info.setIsCrowdfunding(rs.getString("isCrowdfunding"));
					crowdfunding_Info.setPicture1(rs.getString("picture1"));
					crowdfunding_Info.setPublishTime(rs.getString("publishTime"));
					crowdfunding_Info.setTarget(rs.getInt("target"));
					crowdfunding_Info.setTitle(rs.getString("title"));
					crowdfunding_Info.setUserID(rs.getInt("userID"));
					list.add(crowdfunding_Info);
				}
				
				stm.close();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				try {
					this.conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
        	        	
        	return list;
        }
}
