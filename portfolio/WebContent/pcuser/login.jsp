<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Green PC</title>
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="left_font">��ǻ�� �ڸ� (����)</div>
   <div class="main_top"> <h1>Green PC</h1> </div>
   	<form action="loginOk.jsp" method="post">
   		<div class="tab">
   		<table>
   			<tr > 
   				<td align="left">ȸ�� �α��� </td>
   				<td >�� ȸ�� �α��� </td>
   			</tr>
   				<tr>
   				<td>���̵�: &nbsp; <input type="text" name="u_id"> </td> 
   				<td>ī�� ��ȣ : &nbsp; <input type="text" name="u_card"> </td> 	
   				</tr>
				<tr>   			
   				<td>��й�ȣ: <input type="password" name="u_pwd"></td>
   				<td>  <input class="btn" type="submit" value="�α���">
   				 <input class="btn" type="button" value="ȸ������" onclick="location.href='signup.jsp'"></td>
   				</tr>
   				
   			
   			
   		</table>
   
   		</div>
   	</form>
   
   </body>
</html>