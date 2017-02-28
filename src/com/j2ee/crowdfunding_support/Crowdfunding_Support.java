package com.j2ee.crowdfunding_support;

public class Crowdfunding_Support {
      private int supportID;//捐助信息ID
      private int descriptionID;//众筹信息ID
      private int userID;//用户ID
      private String userName;//捐款用户名
      private int money;//捐款金额
      private String time;//捐款时间
      
	public int getSupportID() {
		return supportID;
	}
	public void setSupportID(int supportID) {
		this.supportID = supportID;
	}
	public int getDescriptionID() {
		return descriptionID;
	}
	public void setDescriptionID(int descriptionID) {
		this.descriptionID = descriptionID;
	}
	public int getUserID() {
		return userID;
	}
	public void setUserID(int userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
      
      
}
