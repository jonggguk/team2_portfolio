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
				<td colspan="2" align="center"><h2>ȸ�� ���� ����</h2> <br>'*'ǥ��
					�׸��� �ʼ� �Է� �׸� �Դϴ�</td>
			</tr>

			<tr>
				<td width="100px">ȸ���̸� :</td>
				<td><%=ub.getU_name() %>	</td>
			</tr>
			<tr>
				<td width="100px">��ȣ</td>
				<td><input type="password" name="u_pwd" size="20">*</td>
			</tr>
			<tr>
				<td width="100px">��ȣ Ȯ��</td>
				<td><input type="password" name="u_pwd2" size="20">*</td>
			</tr>
			
			<tr>
				<td width="100px">E-mail</td>
				<td><input type="text" name="u_email" size="25" value=""></td>
			</tr>
			<tr>
				<td width="100px">�ּ�</td>
				<td><input type="text" name="u_address" size="25" value=""></td>
			</tr>
			<tr>
				<td colspan="3" align="center">
				
				<input type="button" value="����" onclick = "update_check_ok()" > 
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<input type="reset" value="�ٽ��Է�">
					 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					 <input type="button" value="��������"
					onclick="javascript:window.location='main.jsp'"></td>
			</tr>
		</form>
	</table>
</body>
</html>