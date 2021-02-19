<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPage</title>
</head>
<body>
<center>
	<div>
		<form name="loginpage" action="Login" method="post">
			<table>
				<tr>
					<td><div align="center">
							<font size="5" color="#6363FF"><strong>購票前/訂單查詢前，請先登入會員</strong></font>
						</div></td>
				</tr>
				<tr>
					<td><font color="red">
							<%
								if (request.getAttribute("error") == "1") {
									out.println("不可有空白，請重新輸入");
								} else if (request.getAttribute("error") == "2") {
									out.println("帳號有誤，請重新輸入");
								} else if (request.getAttribute("error") == "3") {
									out.println("密碼有誤，請重新輸入");
								}
							%>
					</font><br>
				<tr>
					<td><div align="right">帳號:</div></td>
					<td><input type="text" name="accountName"></td>
				</tr>
				<tr>
					<td><div align="right">密碼:</div></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><div align="right">
							新使用者，請點選<a href="AddNewUser">註冊</a>
						</div></td>
				</tr>
				<tr>
					<td><br> <br></td>
				</tr>
				<tr>
					<td><div align="right">
							<input type="submit" name="submit" value="登入">
						</div></td>
					<td><div align="left">
							<input type="reset" name="reset" value="重置">
						</div></td>
				</tr>
			</table>

		</form>

	</div>
</center>
</body>
</html>