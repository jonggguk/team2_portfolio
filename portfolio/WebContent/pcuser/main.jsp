<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%-- <%
	if(session.getAttribute("User")==null){
	%>
		<jsp:forward page="login.jsp"></jsp:forward> 이거 하면 로그인 안하고는 메인 못가게막아줍니다 
	<% 
	}
	
%> --%>
<%
	String uid = (String)session.getAttribute("uid");
	String name = (String)session.getAttribute("name");
%>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="style3.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="test.js" charset="utf-8"></script>
</head>
<body>
 <div align="center"> <h1>Green pc</h1> </div>
<table border="2" align ="right" cellspacing="0">
		<form method="post" action="login.jsp">
			<tr> 
			 	<td> 안녕하세요. <%= name%>(<%= uid%>)님 
			  	</td>
			</tr>
			<tr>
				 <td> 남은시간 : ??????</td>
			</tr>
			<tr>
				 <td> 사용시간 : ??????</td>
			</tr>
			<tr>
				 <td> 남은시간 : ??????</td>
			</tr>
			<tr> 
			<td> 
			<a href="login.jsp">	<input type="button" value="로그아웃" onclick="alert('로그아웃합니당')">  </a>
       
    </script>
				&nbsp;&nbsp;&nbsp;
				<input type="button" value="회원정보변경"
				 onclick="location.href='userUpdate.jsp'"> 
			</td> 
			
			</tr>
		</form>
	</table>
</body>
</html>