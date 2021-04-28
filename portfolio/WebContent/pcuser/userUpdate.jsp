<%@page import="portfolio.UserBean"%>
<%@page import="portfolio.UserDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<% String id =(String)session.getAttribute("uid");
	UserDBBean db =UserDBBean.getInstance();
	UserBean ub = db.getUser(id);
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="test.js" charset="utf-8"></script> 
<link href="style4.css" rel="stylesheet" type="text/css">
</head>
<body>
	 <table  >
		<form name="form" method="post" cellspacing="2" action="userUpdateOk.jsp">
			<tr>
				<td colspan="2" align="center"><h2>회원 정보 수정</h2> <br>'*'표시
					항목은 필수 입력 항목 입니다</td>
			</tr>

			<tr>
				<td width="100px">회원이름 :</td>
				<td><%=ub.getU_name() %>	</td>
			</tr>
			<tr>
				<td width="100px">암호</td>
				<td><input type="password" name="u_pwd" size="20">*</td>
			</tr>
			<tr>
				<td width="100px">암호 확인</td>
				<td><input type="password" name="u_pwd2" size="20">*</td>
			</tr>
			
			<tr>
				<td width="100px">E-mail</td>
				<td><input type="text" name="u_email" size="25" value=""></td>
			</tr>
			<tr>
				<td width="100px">주소</td>
				<td><input type="text" name="u_address" size="25" value=""></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				
				<input type="button" value="수정" onclick = "update_check_ok()" > 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="reset" value="다시입력">
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <input type="button" value="수정안함"
					onclick="javascript:window.location='main.jsp'"></td>
			</tr>
		</form>
	</table>
</body>
</html>