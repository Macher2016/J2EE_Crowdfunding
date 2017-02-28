package com.j2ee.crowdfunding_comment;

public class Crowdfunding_Comment {
     private int commentID;//评论信息ID
     private int descriptionID;//众筹信息ID
     private int userID;//用户ID
     private String userName;//评论用户名
     private String content;//评论内容
     private String time;//评论时间
     
     
	public int getCommentID() {
		return commentID;
	}
	public void setCommentID(int commentID) {
		this.commentID = commentID;
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
     
     
}
