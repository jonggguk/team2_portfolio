<%@page import="portfolio.UserDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="user" class="portfolio.UserBean"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>

<%	
	UserDBBean db = UserDBBean.getInstance();
	if (db.confirmID(user.getU_id()) == 1) {
		
%>
				<script>
			alert("중복되는 아이디가 존재합니다");
			history.back();

				</script>
<%
	} else {
		
			int re =db.insertUser(user);
		
		if(re==1){
%>
			<script>
			alert("회원 가입을 축하합니다 \n 회원으로 로그인 해주세요 ");
			document.location.href ="login.jsp";
			</script>
<%

		}else{
%> 
			
			<script>
			alert("회원 가입에 실패했습니다]");
			document.location.href ="login.jsp";
			</script>

<%
		}
	} 
%>