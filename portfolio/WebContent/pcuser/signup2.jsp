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
			alert("�ߺ��Ǵ� ���̵� �����մϴ�");
			history.back();

				</script>
<%
	} else {
		
			int re =db.insertUser(user);
		
		if(re==1){
%>
			<script>
			alert("ȸ�� ������ �����մϴ� \n ȸ������ �α��� ���ּ��� ");
			document.location.href ="login.jsp";
			</script>
<%

		}else{
%> 
			
			<script>
			alert("ȸ�� ���Կ� �����߽��ϴ�]");
			document.location.href ="login.jsp";
			</script>

<%
		}
	} 
%>