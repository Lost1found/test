package com.geotest;

public class User {
	private String mUserName;
	private String mPassWord;
	public User(String userName,String passWord) {
		mUserName=userName;
		mPassWord=passWord;
	}
	public String getmUserName() {
		return mUserName;
	}
	public void setmUserName(String mUserName) {
		this.mUserName = mUserName;
	}
	public String getmPassWord() {
		return mPassWord;
	}
	public void setmPassWord(String mPassWord) {
		this.mPassWord = mPassWord;
	}

}
