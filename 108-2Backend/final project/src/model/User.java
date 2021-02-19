package model;

import java.io.Serializable;

public class User implements Serializable{

	private String name;
	private String phone;
	private String email;
	private String birthyear;
	private String birthmonth;
	private String birthday;
	private String accountName;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBirthYear() {
		return birthyear;
	}
	public void setBirthYear(String birthyear) {
		this.birthyear = birthyear;
	}
	public String getBirthMonth() {
		return birthmonth;
	}
	public void setBirthMonth(String birthmonth) {
		this.birthmonth = birthmonth;
	}
	public String getBirthDay() {
		return birthday;
	}
	public void setBirthDay(String birthday) {
		this.birthday = birthday;
	}
	
	public String getAccountName() {
		return accountName;
	}
	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
