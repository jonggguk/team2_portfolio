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
			alert("존재하지 않는 회원");
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
				alert("비밀번호를 확인해 주세요");
				history.go(-1);
				</script>
				
				<% 
			}else {
				/*실제 테스트시 이 케이스는 제외댐*/
				%>
				<script >
				alert("아이디가 맞지 않습니다");
				history.go(-1);
				</script>
				 
		
		
		<%
			
			}
		}
		%>
	</body>
	</html>


