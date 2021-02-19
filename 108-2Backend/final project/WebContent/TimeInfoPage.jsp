<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="javax.servlet.*,java.text.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TimeInfoPage</title>
</head>
<body>
	<%
		Date date = new Date();
		Calendar calendar = new GregorianCalendar();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd");
	%>

	<center>
		<div>
			<table>
				<tr>
					<td><div align="left">
							<font size="5" color="#6363FF"><strong>場次/時刻列表</strong></font>
						</div></td>
				</tr>
				<tr>
					<td><div align="center">
							<font size="4" color="6363FF">今日日期為: <%
								calendar.add(calendar.DATE, 0);
								out.print(ft.format(date));
							%>
							</font>
						</div></td>
				</tr>

			</table>
			<table>
				<tr>
					<td><div align="left">
							<strong>本日場次一覽</strong>
						</div></td>
				</tr>

				<tr>
					<td><div align="left">
							<IMG
								SRC="https://storage.googleapis.com/www-cw-com-tw/article/202004/article-5e9962b7ccc53.jpg"
								Width="250">
						</div></td>
					<td><div align="center">
							<font color="#6363FF" Size="3">機智的醫生生活</font><br>
						</div>
						<div align="right">
							一廳| 10:00 17:00 21:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="left">
							<IMG
								SRC="https://img.ltn.com.tw/Upload/talk/page/800/2019/08/08/phpOPAmvg.jpg"
								Width="250">
						</div></td>
					<td><div align="center">
							<font color="#6363FF" Size="3">請輸入檢索詞:WWW</font><br>
						</div>
						<div align="right">
							二廳| 10:00 16:00 22:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="left">
							<IMG
								SRC="https://miro.medium.com/max/1000/1*2GyGZWzOV2i0WE6azbD6fg.jpeg"
								Width="250">
						</div></td>
					<td><div align="center">
							<font color="#6363FF" Size="3">德魯納酒店</font><br>
						</div>
						<div align="right">
							三廳| 11:00 18:00 21:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="left">
							<IMG
								SRC="https://assets.onefm.com.my/2020/02/78E05361-B9FF-44FE-80DE-4DF68E74E510.jpeg"
								Width="250">
						</div></td>
					<td><div align="center">
							<font color="#6363FF" Size="3">天氣好的話，我會去找你</font><br>
						</div>
						<div align="right">
							四廳| 11:00 17:00 20:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="left">
							<IMG SRC="https://images.chiblog.tw/201810/3615-01.jpg"
								Width="250">
						</div></td>
					<td><div align="center">
							<font color="#6363FF" Size="4">Player</font><br>
						</div>
						<div align="right">
							五廳| 10:30 17:00 21:30<br>
						</div></td>
				</tr>
			</table>
			<table>
				<tr>
					<td><strong>功能列表</strong></td>
				</tr>
			</table>
			<table border="1">
				<tr>
					<td><div align="center">
							<a href="Main?page=0"><font color="#6363FF">首頁</font></a>
						</div></td>
					<td><div align="center">
							<a href="Main?page=1"><font color="#6363FF">熱映劇集介紹</font></a>
						</div>
					<td><div align="center">
							<a href="BuyTicket"><font color="#6363FF">立即購票</font></a>
						</div></td>
					<td><div align="center">
							<a href="BuyTicket?page=1"><font color="#6363FF">訂單查詢</font></a>
						</div></td>
					<td><div align="center">
							<a href="Login"><font color="#6363FF">會員登入</font></a>
						</div></td>
					<td><div align="center">
							<a href="AddNewUser"><font color="#6363FF">會員註冊</font></a>
						</div></td>
				</tr>
			</table>

		</div>
	</center>
</body>
</html>