package lost_found;

public class User {
	private String mStudentID;
	private String mUserName;
	private String mPassWord;
	private String mUserRealName;
	private String mConfirmPassword;
	private String mark;
	public User() {
		
	}
	public User(String userName,String passWord) {
		mUserName=userName;
		mPassWord=passWord;
	}
	public User(String mUserName, String mPassWord, String mUserRealName, String mConfirmPassword) {
		this.mUserName = mUserName;
		this.mPassWord = mPassWord;
		this.mUserRealName = mUserRealName;
		this.mConfirmPassword = mConfirmPassword;
	}
	
	public User(String mStudentID) {
		super();
		this.mStudentID = mStudentID;
	}
	public String getmStudentID() {
		return mStudentID;
	}
	public void setmStudentID(String mStudentID) {
		this.mStudentID = mStudentID;
	}
	public String getmUserRealName() {
		return mUserRealName;
	}

	public void setmUserRealName(String mUserRealName) {
		this.mUserRealName = mUserRealName;
	}

	public String getmConfirmPassword() {
		return mConfirmPassword;
	}

	public void setmConfirmPassword(String mConfirmPassword) {
		this.mConfirmPassword = mConfirmPassword;
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
	public String getMark() {
		return mark;
	}
	public void setMark(String mark) {
		this.mark = mark;
	}
	
}
