<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BuyTicketPage</title>
</head>
<body>
	<div>

		<form name="BuyTicket" method="post" action="BuyTicket">
			<table>
				<tr>
					<td><div align="center">
							<font color="#6363FF" size="5"><strong>購票頁面Step1-劇名與場次選擇</strong></font>
						</div></td>
				</tr>
				<tr>
					<td><div align="left">
							<font color="red">
								<%
									if (request.getAttribute("error") != null) {
										out.println("電影場次不得空白，請擇一!");
									}
								%>
							</font>
						</div></td>
				</tr>

				<tr>
					<td><div align="left">
							<font size="4"><strong>場次/時刻列表</strong></font>
						</div></td>
				</tr>

				<tr>
					<td><br></td>
				</tr>
				<tr>
					<td><div align="center">
							<IMG
								SRC="https://storage.googleapis.com/www-cw-com-tw/article/202004/article-5e9962b7ccc53.jpg"
								Width="250">
						</div></td>
					<td><div align="right">
							<strong>機智的醫生生活<br>|一廳
							</strong> <input type="radio" name="drama" value="機智醫生生活 10:00">10:00<br>
							<input type="radio" name="drama" value="機智醫生生活  17:00">17:00<br>
							<input type="radio" name="drama" value="機智醫生生活 21:00">21:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="center">
							<IMG
								SRC="https://img.ltn.com.tw/Upload/talk/page/800/2019/08/08/phpOPAmvg.jpg"
								Width="250">
						</div></td>
					<td><div align="right">
							<strong>請輸入檢索詞:WWW<br>|二廳
							</strong> <input type="radio" name="drama" value="請輸入檢索詞:WWW 10:00">10:00<br>
							<input type="radio" name="drama" value="請輸入檢索詞:WWW 16:00">16:00<br>
							<input type="radio" name="drama" value="請輸入檢索詞:WWW 22:00">22:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="center">
							<IMG
								SRC="https://miro.medium.com/max/1000/1*2GyGZWzOV2i0WE6azbD6fg.jpeg"
								Width="250">
						</div></td>
					<td><div align="right">
							<strong>德魯納酒店<br>|三廳
							</strong> <input type="radio" name="drama" value="德魯納酒店 11:00">11:00<br>
							<input type="radio" name="drama" value="德魯納酒店 18:00">18:00<br>
							<input type="radio" name="drama" value="德魯納酒店 21:00">21:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="center">
							<IMG
								SRC="https://assets.onefm.com.my/2020/02/78E05361-B9FF-44FE-80DE-4DF68E74E510.jpeg"
								Width="250">
						</div></td>
					<td><div align="right">
							<strong>天氣好的話，我會去找你<br>|四廳
							</strong> <input type="radio" name="drama" value="天氣好的話，我會去找你 11:00">11:00<br>
							<input type="radio" name="drama" value="天氣好的話，我會去找你 17:00">17:00<br>
							<input type="radio" name="drama" value="天氣好的話，我會去找你 20:00">20:00<br>
						</div></td>
				</tr>
				<tr>
					<td><div align="center">
							<IMG SRC="https://images.chiblog.tw/201810/3615-01.jpg"
								Width="250">
						</div></td>
					<td><div align="right">
							<strong>Player<br>|五廳
							</strong> <input type="radio" name="drama" value="Player 10:30">10:30<br>
							<input type="radio" name="drama" value="Player 17:00">17:00<br>
							<input type="radio" name="drama" value="Player 21:30">21:30<br>
						</div></td>
				</tr>
				<tr>
					<td><br> <br> <br></td>
				</tr>
				<tr>
					<td><div align="center">
							影片選定: <input type="submit" name="page" value="提交">
						</div></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>