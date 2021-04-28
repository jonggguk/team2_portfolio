<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="EUC-KR">
<link href="style2.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="test.js" charset="utf-8"></script>
<title>Green PC 회원가입 페이지</title>
</head>

<body>
	
		<h1>Green PC</h1>
		<table  cellspacing="0">
		<form name="form" method="post" action="signup2.jsp">
			<tr>
				<td colspan="2" align="center"><h2>회원 가입 신청</h2> '*'표시
					항목은 필수 입력 항목 입니다</td>
			</tr>

			<tr>
				<td width="80">회원이름</td>
				<td> <input type="text" name="u_name" size="20">* </td>
			</tr>
			<tr>
				<td width="80">ID</td>
				<td><input type="text" name="u_id" size="20">* (5자리 이상 )</td>
			</tr>
			<tr>
				<td width="80">비밀번호</td>
				<td><input type="password" name="u_pwd" size="20">*</td>
			</tr>
			<tr>
				<td width="80"> 재입력</td>
				<td><input type="password" name="u_pwd2" size="20">*</td>
			</tr>
			<tr>
				<td width="80">주민번호</td>
				<td><input type="text" name="u_jumin" size="20">* ( - 빼고 입력)</td>
			</tr>
			<tr>
				<td width="80">E-mail</td>
				<td><input type="text" name="u_email" size="25"></td>
			</tr>
			<tr>
				<td width="80">주소</td>
				<td><input type="text" name="u_address" size="25"></td>
			</tr>
			<tr align="center">
				<td colspan="3" align="center">
				<input type="button" value="등록"
					onclick="pc_ok()"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="reset" value="다시입력">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="button"
					value="가입안함" onclick="javascript:window.location='login.jsp'">
				</td>
			</tr>
		</form>
	</table>
	
</body>
</html>