package model;

import java.io.Serializable;

public class TicketRecord implements Serializable {
	private String accountName;
	private String drama;
	private String adultAmount;
	private String studentAmount;
	private String elderAmount;
	private String payment;
	private int sum;

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getDrama() {
		return drama;
	}

	public void setDrama(String drama) {
		this.drama = drama;
	}

	public String getAdultAmount() {
		return adultAmount;
	}

	public void setAdultAmount(String adultAmount) {
		this.adultAmount = adultAmount;
	}

	public String getStudentAmount() {
		return studentAmount;
	}

	public void setStudentAmount(String studentAmount) {
		this.studentAmount = studentAmount;
	}

	public String getElderAmount() {
		return elderAmount;
	}

	public void setElderAmount(String elderAmount) {
		this.elderAmount = elderAmount;
	}
	
	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}
	
	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
	

}
