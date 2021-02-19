package model;

import java.util.HashMap;

public class TicketCheck {
	// 張數檢查(總和不可超出10)
	public boolean AmountCheck(int adultAmount, int studentAmount, int elderAmount) {
		if (adultAmount + studentAmount + elderAmount <= 10) {
			if (adultAmount + studentAmount + elderAmount == 0)
				return false;
			else
				return true;
		} else
			return false;
	}

	// 金額計算
	public int SumCount(int adultAmount, int studentAmount, int elderAmount) {
		int sum = (adultAmount * 320) + (studentAmount * 300) + (elderAmount * 280);
		return sum;
	}

	// 新增購票紀錄
	public TicketRecord AddNewRecord(String accountName, String drama, String adultAmount, String studentAmount,
			String elderAmount, int sum, String payment, HashMap<String, TicketRecord> map) {
		TicketRecord record = new TicketRecord();
		record.setAccountName(accountName);
		record.setDrama(drama);
		record.setAdultAmount(adultAmount);
		record.setStudentAmount(studentAmount);
		record.setElderAmount(elderAmount);
		record.setSum(sum);
		record.setPayment(payment);
		map.put(accountName, record);
		return record;
	}
}
