<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AddNewUserPage1</title>
</head>
<body>
	<center>
		<div>
			<form name="AddPage1" method="post" action="AddNewUser">

				<p>
					<strong><font size="5" color="#6363FF">會員註冊Step1</font></strong>
				</p>
				<p>
					<font color="red"> <%if (request.getAttribute("error") != null) {
						out.println("不可有空白，請每一項都確實填寫，謝謝!");} %>
					</font>
				</p>
				<p>
					<strong>請務必詳實填寫下列資料，本公司不會隨意將資料外流</strong>
				</p>


				<table>
					<tr>
						<td><div align="right">姓名:</div></td>
						<td><div align="left">
								<input type="text" name="name" size="20">
							</div></td>
					</tr>
					<tr>
						<td><div align="right">手機號碼:</div></td>
						<td><div align="left">
								<input type="text" name="phone" size="20">
							</div></td>
					</tr>
					<tr>
						<td><div align="right">生日:</div></td>
						<td><div align="left">
								<select name="birthyear">
									<option value="    "></option>
									<option value="2020">2020</option>
									<option value="2019">2019</option>
									<option value="2018">2018</option>
									<option value="2017">2017</option>
									<option value="2016">2016</option>
									<option value="2015">2015</option>
									<option value="2014">2014</option>
									<option value="2013">2013</option>
									<option value="2012">2012</option>
									<option value="2011">2011</option>
									<option value="2010">2010</option>
									<option value="2009">2009</option>
									<option value="2008">2008</option>
									<option value="2007">2007</option>
									<option value="2006">2006</option>
									<option value="2005">2005</option>
									<option value="2004">2004</option>
									<option value="2003">2003</option>
									<option value="2002">2002</option>
									<option value="2001">2001</option>
									<option value="2000">2000</option>
									<option value="1999">1999</option>
									<option value="1998">1998</option>
									<option value="1997">1997</option>
									<option value="1996">1996</option>
									<option value="1995">1995</option>
									<option value="1994">1994</option>
									<option value="1993">1993</option>
									<option value="1992">1992</option>
									<option value="1991">1991</option>
									<option value="1990">1990</option>
									<option value="1989">1989</option>
									<option value="1988">1988</option>
									<option value="1987">1987</option>
									<option value="1986">1986</option>
									<option value="1985">1985</option>
									<option value="1984">1984</option>
									<option value="1983">1983</option>
									<option value="1982">1982</option>
									<option value="1981">1981</option>
									<option value="1980">1980</option>
									<option value="1979">1979</option>
									<option value="1978">1978</option>
									<option value="1977">1977</option>
									<option value="1976">1976</option>
									<option value="1975">1975</option>
								</select>年 <select name="birthmonth">
									<option value="  "></option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>月 <select name="birthday">
									<option value="  "></option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
									<option value="13">13</option>
									<option value="14">14</option>
									<option value="15">15</option>
									<option value="16">16</option>
									<option value="17">17</option>
									<option value="18">18</option>
									<option value="19">19</option>
									<option value="20">20</option>
									<option value="21">21</option>
									<option value="22">22</option>
									<option value="23">23</option>
									<option value="24">24</option>
									<option value="25">25</option>
									<option value="26">26</option>
									<option value="27">27</option>
									<option value="28">28</option>
									<option value="29">29</option>
									<option value="30">30</option>
									<option value="31">31</option>
								</select>日<br>
							</div></td>
					</tr>
					
					<tr>
						<td><div align="right">
								<input type="submit" name="page" value="下一頁">
							</div></td>
						<td><div align="left">
								<input type="reset" name="reset" value="重設">
							</div></td>
					</tr>
				</table>
			</form>
		</div>
	</center>
</body>
</html>