function petCheck() {
	if (document.frm.name.value.length ==0){
		alert("이름을 써주세요.");
		frm.name.focus();
		return flase;
	}
	if(document.frm.price.value.length ==0){
		alert("책임비를 작성해주세요");
		frm.price.focus();
		return false();
	}
	if(isNaN(document.frm.price.value)){
		alert("숫자를 입력해주세요.");
		frm.price.focus();
		return false;
	}
	return true;
}