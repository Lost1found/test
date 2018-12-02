package com.geotest;

public class GeoQuestion{
	private String  mQuestion;
	private boolean  mTrueQuestion;
	public GeoQuestion(String question,boolean  trueQuestion){
		mQuestion=question;
		mTrueQuestion=trueQuestion;
	}
	public String getQuestion(){
	   return mQuestion;
  }
  public boolean isTrueQuestion(){
	   return mTrueQuestion;
  }
}

