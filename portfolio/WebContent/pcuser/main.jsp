<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<%-- <%
	if(session.getAttribute("User")==null){
	%>
		<jsp:forward page="login.jsp"></jsp:forward> �̰� �ϸ� �α��� ���ϰ�� ���� �����Ը����ݴϴ� 
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
			 	<td> �ȳ��ϼ���. <%= name%>(<%= uid%>)�� 
			  	</td>
			</tr>
			<tr>
				 <td> �����ð� : ??????</td>
			</tr>
			<tr>
				 <td> ���ð� : ??????</td>
			</tr>
			<tr>
				 <td> �����ð� : ??????</td>
			</tr>
			<tr> 
			<td> 
			<a href="login.jsp">	<input type="button" value="�α׾ƿ�" onclick="alert('�α׾ƿ��մϴ�')">  </a>
       
    </script>
				&nbsp;&nbsp;&nbsp;
				<input type="button" value="ȸ����������"
				 onclick="location.href='userUpdate.jsp'"> 
			</td> 
			
			</tr>
		</form>
	</table>
</body>
</html>