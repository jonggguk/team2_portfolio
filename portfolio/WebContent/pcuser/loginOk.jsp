<%@page import="portfolio.UserBean"%>
<%@page import="portfolio.UserDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% String id ="", pwd =""; 
	id = request.getParameter("u_id");
	pwd = request.getParameter("u_pwd");
	UserDBBean db = UserDBBean.getInstance();
	int check = db.userCheck(id, pwd);
	UserBean ub = db.getUser(id);
	if (ub== null){
		%>
		<script>
			alert("�������� �ʴ� ȸ��");
			history.go(-1);
		</script>
		<%
			} else {
			String name =ub.getU_name();
			 
			if(check==1){
				session.setAttribute("uid", id);
				session.setAttribute("name", name);
				session.setAttribute("User", "yes");
				response.sendRedirect("main.jsp");
			}else if(check==0){
				%>
				<script >
				alert("��й�ȣ�� Ȯ���� �ּ���");
				history.go(-1);
				</script>
				
				<% 
			}else {
				/*���� �׽�Ʈ�� �� ���̽��� ���ܴ�*/
				%>
				<script >
				alert("���̵� ���� �ʽ��ϴ�");
				history.go(-1);
				</script>
				 
		
		
		<%
			
			}
		}
		%>
	</body>
	</html>


