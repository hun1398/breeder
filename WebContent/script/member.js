function loginCheck(){	
		if(document.frm.userid.value.length==0){
		alert("아이디를 써주세요");
		frm.userid.focus();
		return false;
	}
	if(document.frm.pwd.value == ""){
	alert("암호는 반드시 입력해야 합니다.");
	frm.pwd.focus();
		
	return false;
	}
	
	return true;
}
function idCheck(){
	if(document.frm2.userid.value ==""){
	alert('아이디를 입력하여 주십시오.');
	document.frm2.userid.focus();
	return;
	}
	var url = "idCheck.do?userid=" + document.frm2.userid.value;
	window.open(url,"_blank_1",
	"toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=450,height=200");
}
function idok(){
	opener.frm2.userid.value=document.frm2.userid.value;
	opener.frm2.reid.value=document.frm2.userid.value;
	self.close();
}
function agecheck(){
if(document.frm2.age.value<=19)
alert('20세 이상만 가입가능합니다.')
frm2.age.focus();
return;
}