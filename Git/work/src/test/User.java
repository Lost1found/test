package test;

public class User {
	private String mUserName;
	private String mPassWord;
	private String mUserRealName;
	public User(String mUserName, String mPassWord) {
		super();
		this.mUserName = mUserName;
		this.mPassWord = mPassWord;
	}
	public User(String mUserName, String mPassWord, String mUserRealName) {
		super();
		this.mUserName = mUserName;
		this.mPassWord = mPassWord;
		this.mUserRealName = mUserRealName;
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
	public String getmUserRealName() {
		return mUserRealName;
	}
	public void setmUserRealName(String mUserRealName) {
		this.mUserRealName = mUserRealName;
	}
	@Override
	public String toString() {
		return "User [mUserName=" + mUserName + ", mPassWord=" + mPassWord + ", mUserRealName=" + mUserRealName + "]";
	}

}
