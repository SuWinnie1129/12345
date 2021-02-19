<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuyTicketPage2</title>
</head>
<body>
	<center>
		<div>
			<table>
				<tr>
					<td><div align="left">
							<font size="5" color="#6363FF"><strong>購票頁面Step2-選定張數與票種</strong></font>
						</div></td>
				</tr>
				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><div align="left">
							<strong>您選定的場次為: <font color="#6363FF"> <%
 	out.println(request.getAttribute("drama"));
 %>
							</font></strong>
						</div></td>
				</tr>
			</table>
			<font color="red"> <%
 	if (request.getAttribute("error") == "1") {
 		out.println("選購票數不可超過10張/選取總數量不可為0，請重新選取數量!");
 	}
 %>
			</font> <br> |請選擇票種與張數(每人限購10張):<br>
			<form name="BuyTicketPage2" method="post" action="BuyTicket">
				<table>
					<tr>
						<td><div align="left">票種</div></td>
						<td><div align="left">張數</div></td>
						<td><div align="left">售價</div></td>
					</tr>
					<tr>
						<td><div align="left">全票</div></td>
						<td><div align="right">
								<select name="adultAmount" size="1"><option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option></select>
							</div></td>
						<td><div align="right">320</div></td>
					</tr>
					<tr>
						<td><div align="left">學生票</div></td>
						<td><div align="right">
								<select name="studentAmount" size="1"><option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option></select>
							</div></td>
						<td><div align="right">300</div></td>
					</tr>
					<tr>
						<td><div align="left">敬老票</div></td>
						<td><div align="right">
								<select name="elderAmount" size="1"><option value="0">0</option>
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
									<option value="6">6</option>
									<option value="7">7</option>
									<option value="8">8</option>
									<option value="9">9</option>
									<option value="10">10</option></select>
							</div></td>
						<td><div align="right">280</div></td>
					</tr>
					<tr>
						<td><br></td>
					</tr>
					</table>
					<font color="red"> <%
 						if (request.getAttribute("error") == "2") {
 							out.println("請務必選擇一種支付方式，謝謝");
 						}
 					%></font>
					<table>
					<tr>
						<td><div align="center">|請選擇付款方式</div></td>
						<td><input type="radio" name="payment" value="現金">現金<br>
							<input type="radio" name="payment" value="信用卡">信用卡<br>
							<input type="radio" name="payment" value="Line Pay">Line
							Pay<br> <input type="radio" name="payment" value="街口支付">街口支付<br>
							<input type="radio" name="payment" value="會員儲值卡">會員儲值卡<br>
						</td>
					</tr>
					<tr>
						<td><br> <br></td>
					</tr>
					<tr>
						<td><div align="center">
								<input type="submit" name="page" value="完成">
							</div>
				</table>
			</form>

		</div>
	</center>
</body>
</html>