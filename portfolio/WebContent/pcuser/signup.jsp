<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<link href="style2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="test.js" charset="utf-8"></script>
<title>Green PC ȸ������ ������</title>
</head>

<body>
	
		<h1>Green PC</h1>
		<table  cellspacing="0">
		<form name="form" method="post" action="signup2.jsp">
			<tr>
				<td colspan="2" align="center"><h2>ȸ�� ���� ��û</h2> '*'ǥ��
					�׸��� �ʼ� �Է� �׸� �Դϴ�</td>
			</tr>

			<tr>
				<td width="80">ȸ���̸�</td>
				<td> <input type="text" name="u_name" size="20">* </td>
			</tr>
			<tr>
				<td width="80">ID</td>
				<td><input type="text" name="u_id" size="20">* (5�ڸ� �̻� )</td>
			</tr>
			<tr>
				<td width="80">��й�ȣ</td>
				<td><input type="password" name="u_pwd" size="20">*</td>
			</tr>
			<tr>
				<td width="80"> ���Է�</td>
				<td><input type="password" name="u_pwd2" size="20">*</td>
			</tr>
			<tr>
				<td width="80">�ֹι�ȣ</td>
				<td><input type="text" name="u_jumin" size="20">* ( - ���� �Է�)</td>
			</tr>
			<tr>
				<td width="80">E-mail</td>
				<td><input type="text" name="u_email" size="25"></td>
			</tr>
			<tr>
				<td width="80">�ּ�</td>
				<td><input type="text" name="u_address" size="25"></td>
			</tr>
			<tr align="center">
				<td colspan="3" align="center">
				<input type="button" value="���"
					onclick="pc_ok()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="�ٽ��Է�">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
					value="���Ծ���" onclick="javascript:window.location='login.jsp'">
				</td>
			</tr>
		</form>
	</table>
	
</body>
</html>