<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UserInfoPage</title>
</head>
<body>
	<center>
	<p>
		<strong><font color="#6363FF" size="5">完成註冊!</font></strong>
	</p>
	<div align="center">
		<strong>以下為您的會員資料</strong>
	</div>

	帳戶名稱 : ${userInfo.accountName}
	<br> 帳戶密碼: ${userInfo.password}
	<br> 姓名: ${userInfo["name"]}
	<br> 手機號碼: ${userInfo.phone}
	<br> 生日:
	<%
		out.println(request.getAttribute("birthyear") + "年" + request.getAttribute("birthmonth") + "月"
				+ request.getAttribute("birthday") + "日");
	%>
	<br>
	<br>



	<a href="Login">請返回登入頁面重新登入!</a>
	</center>
</body>
</html>