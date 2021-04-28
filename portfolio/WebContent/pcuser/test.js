function pc_ok() {
	if (document.form.u_name.value.length == "") {
		alert("이름을 입력해주세요");
		form.u_name.focus();
		return;
	}
	if (document.form.u_id.value.length < 5) {
		alert("ID는 5자리 이상 입력하세요!!");
		form.u_id.focus();
		return;
	}
	if (document.form.u_pwd.value.length == "") {
		alert("비밀번호를 입력해주세요 !");
		form.u_pwd.focus();
		return;
	}
	if (document.form.u_pwd.value != document.form.u_pwd2.value) {
		alert("비밀번호가 일치 하지 않습니다 !");
		form.u_pwd2.focus();
		return;
	}
	if (document.form.u_jumin.value.length == "") {
		alert("주민번호를 입력해주세요 !");
		form.u_jumin.focus();
		return;
	}
	if (document.form.u_jumin.value.length != 13) {
		alert("주민번호를 확인해주세요 !");
		form.u_jumin.focus();
		return;
	}
	
	
	document.form.submit();
	

}
function update_check_ok(){
	if(document.form.u_pwd.value==""){
		alert("비밀번호를 입력 해주세요 !");
		form.u_pwd.focus();
		return;
	}
	if(document.form.u_pwd.value != document.form.u_pwd2.value){
		alert("비밀번호가 일치 하지 않습니다 !");
		form.u_pwd.focus();
		return;
	}
	document.form.submit();

}




