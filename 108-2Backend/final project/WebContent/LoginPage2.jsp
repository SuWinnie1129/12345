<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginPageSuccess</title>
</head>
<body>
	<center>
		<div>
			<p>
				<font color="#6363FF" size="5"><strong>會員登入成功!!!</strong></font>
			</p>
			${userInfo.name}先生/小姐歡迎登入~<br>
			<br>
			<br> 請點選欲使用之服務:<br> <font color="#6363FF">功能列</font>
			<table>
				<tr>
					<td><div align="center">
							<a href="Main?page=0"><font color="#6363FF">首頁</font></a>
						</div></td>
					<td><div align="center">
							<a href="Main?page=1"><font color="#6363FF">熱映劇集介紹</font></a>
						</div></td>
					<td><div align="center">
							<a href="Main?page=2"><font color="#6363FF">場次查詢</font></a>
						</div></td>
					<td><div align="center">
							<a href="BuyTicket"><font color="#6363FF">立即購票</font></a>
						</div></td>
					<td><div align="center">
							<a href="BuyTicket?page=1"><font color="#6363FF">訂單查詢</font></a>
						</div></td>
			</table>
		</div>
	</center>
</body>
</html>