<%@page import="portfolio.UserDBBean"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <jsp:useBean id="user" class="portfolio.UserBean"></jsp:useBean>
    <jsp:setProperty property="*" name="user"/>
    <%
    String u_id = (String)session.getAttribute("uid");
    user.setU_id(u_id);
    UserDBBean db = UserDBBean.getInstance();
    int re = db.updateUser(user);
    
	
	if(re==1){
%>
		<script>
		alert("입력하신 회원정보가 수정되었습니다");
		document.location.href="main.jsp";
		</script>
		
<% 
	}else{
%>
		<script>
		alert("수정실패");
		history.go(-1);
		</script>
<% 
	}
%>
