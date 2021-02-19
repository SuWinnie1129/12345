<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TicketInfoPage</title>
</head>
<body>
<center>

	<p><font color = "#6363FF" size = "5"><strong>您的購票紀錄</strong></font></p>
	購票人帳號名: ${TicketInfo.accountName}<br>
	選購場次: ${TicketInfo.drama}<br>
	選購票種與張數:<br>
	    全    票 ${TicketInfo.adultAmount}張<br>
	    學生票 ${TicketInfo.studentAmount}張<br>
	    敬老票 ${TicketInfo.elderAmount}張<br><br>
	支付方式: ${TicketInfo.payment}<br>
	 <strong>共計: ${TicketInfo.sum}元</strong><br><br><br>

	<div>
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
						</div>
					<td><div align="center">
							<a href="BuyTicket"><font color="#6363FF">立即購票</font></a>
						</div></td>
					<td><div align="center">
							<a href="Login"><font color="6363FF">會員登入</font></a>
						</div></td>
					<td><div align="center">
							<a href="AddNewUser"><font color="6363FF">會員註冊</font></a>
						</div></td>

				</tr>
			</table>
	</div>
</center>
</body>
</html>