<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Java Bean Actions</title>
</head>
<body>

<br>

<jsp:useBean id="person" class="test.jsp.bean.Person" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="person"/>

<div align="center">
	<fieldset style="width:300px;">
		<legend>�n�J��T</legend>
		<table align="center" width="400">
			<tr>
				<td align="right" style="font-weight:bold;"></td>
				<td>�b���G<jsp:getProperty name="person" property="name"/></td>
			</tr>
			<tr>
				<td align="right" style="font-weight:bold;"></td>
				<td>�K�X�G<jsp:getProperty name="person" property="pwd"/></td>
			</tr>
			<tr>
				<td align="right" style="font-weight:bold;"></td>
				<td><input type="button" name="logout" value="�n�X" onclick="history.go(-1);"></td>
			</tr>
		</table>
	</fieldset>
</div>

</body>
</html>