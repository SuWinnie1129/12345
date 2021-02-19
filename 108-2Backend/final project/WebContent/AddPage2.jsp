<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddNewUserPage2</title>
</head>
<body>
	<center>
		<div>
			<form name="AddPage1" method="post" action="AddNewUser">
				<table>
					<tr>
						<td><div align="center">
								<strong><font size="5" color="#6363FF">會員註冊Step2</font></strong>
							</div></td>
					</tr>
					<tr><td><div align = "center"><font color = "red"><%if(request.getAttribute("error") == "1"){
						out.println("不可有空白，請每一項都確實填寫，謝謝!");
					}
					else if(request.getAttribute("error") == "2"){out.println("此帳號已有人使用，請重新輸入新的帳號");}%></font></div>
					<tr>
						<td><div align="center">
								<strong>請務必詳實填寫下列資料，本公司不會隨意將資料外流</strong>
							</div></td>
					</tr>

					<tr>
						<td><div align="center">帳號:</div></td>
						<td><input type="text" name="accountName" size=20></td>
					</tr>
					<tr>
						<td><div align="center">密碼<br>(建議以6~8數字與字母組合為佳):</div></td>
						<td><input type="password" name="password" size=20></td>
					</tr>
					<tr>
						<td><div align = "right"><input type="submit" name="page" value="完成"></div></td>
						<td><div align = "left"><input type="reset" name="reset" value="重設"></div></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>