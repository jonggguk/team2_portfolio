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
	<div class="left_font">컴퓨터 자리 (미정)</div>
   <div class="main_top"> <h1>Green PC</h1> </div>
   	<form action="loginOk.jsp" method="post">
   		<div class="tab">
   		<table>
   			<tr > 
   				<td align="left">회원 로그인 </td>
   				<td >비 회원 로그인 </td>
   			</tr>
   				<tr>
   				<td>아이디: &nbsp; <input type="text" name="u_id"> </td> 
   				<td>카드 번호 : &nbsp; <input type="text" name="u_card"> </td> 	
   				</tr>
				<tr>   			
   				<td>비밀번호: <input type="password" name="u_pwd"></td>
   				<td>  <input class="btn" type="submit" value="로그인">
   				 <input class="btn" type="button" value="회원가입" onclick="location.href='signup.jsp'"></td>
   				</tr>
   				
   			
   			
   		</table>
   
   		</div>
   	</form>
   
   </body>
</html>