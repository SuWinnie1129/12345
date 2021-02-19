package model;

import java.util.HashMap;
import model.User;

public class AccountCheck {
	// 密碼檢查
	public boolean PasswdCheck(String name, String passwd, HashMap<String, User> hashMap) {
		if (hashMap == null)
			return false;

		User user = hashMap.get(name); // 取出該使用者名稱對應的使用者物件
		String PasswordOnRecord = user.getPassword(); // 取出帳號對應的密碼
		if (passwd.equals(PasswordOnRecord))
			return true; // 密碼正確
		else
			return false; // 密碼錯誤
	}

	// 檢查此帳號名有無被使用過&帳號名檢查
	public boolean AccountNameCheck(String Name, HashMap<String, User> hashMap) {
		if (hashMap == null)
			return false;
		if (hashMap.containsKey(Name)) // 比較HashMap內的key值或value值，但裡面不可以是null，所以須先將null排除
			return true; // 此名稱有被使用過/此名稱使用者存在
		else
			return false; // 此名稱沒有被使用過/此名稱的使用者不存在
	}

	// 新增使用者
	public User addNewUser(String name, String phone, String birthyear, String birthmonth,
			String birthday, String accountName, String password, HashMap<String, User> hashMap) {

		User user = new User();
		user.setName(name);
		user.setPhone(phone);
		user.setBirthYear(birthyear);
		user.setBirthMonth(birthmonth);
		user.setBirthDay(birthday);
		user.setAccountName(accountName);
		user.setPassword(password);

		hashMap.put(accountName, user);
		return user; // 回傳User物件
	}

}
