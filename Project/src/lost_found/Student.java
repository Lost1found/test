package lost_found;
//—ß…˙¿‡
public class Student {
	private String number;
	private String name;
	private String sex;
	private int age;
	private String date;
	private String telephone;
	private String class_;
	private String major;
	private String department;
	public Student(){
	}
	public Student(String number,String name,String sex,int age,String date,String telephone,
			String class_,String major,String department){
		this.number=number;
		this.name=name;
		this.age=age;
		this.class_=class_;
		this.date=date;
		this.department=department;
		this.major=major;
		this.sex=sex;
		this.telephone=telephone;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getClass_() {
		return class_;
	}
	public void setClass_(String class_) {
		this.class_ = class_;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}	
}
