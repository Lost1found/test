package com.geotest;
public class GeoQuestionBank {
	   private static GeoQuestion[] questions={
	new  GeoQuestion("北京是中华人民共和国首都，简称京。",true),
	new  GeoQuestion("中国钢产量最多的省是湖南。",false),
	new  GeoQuestion("新疆维吾尔族自治区是中国面积最大的省级行政区。",true)
	   };
	   public static GeoQuestion[] getQuestions(){
		   return questions;
	   }
	}

