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

	<p><font color = "#6363FF" size = "5"><strong>本次購票紀錄</strong></font></p>
	購票人帳號名: ${record.accountName}<br>
	選購場次: ${record.drama}<br>
	選購票種與張數:<br>
	    全票 ${record.adultAmount}張<br>
	    學生票 ${record.studentAmount}張<br>
	    敬老票 ${record.elderAmount}張<br>
	付款方式: ${record.payment} <br><br>
	 <strong>共計: ${record.sum}元</strong><br>
	感謝您本次的消費!!!<br>
	請於正式放映前10~30分鐘前於櫃檯取票。謝謝您的配合<br>
	<a href = "Main?page=0">返回首頁</a><br>
</center>
</body>
</html>