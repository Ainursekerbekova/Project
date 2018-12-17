signin.addEventListener("click",function(){
	var name=document.getElementById("name").value;
	var passw=document.getElementById("password").value;
	var inputName=document.createTextNode(name);
	var inputSurname=document.createTextNode(surname);

	var str1="";
	var n=name.localeCompare(str1);
	var p=passw.localeCompare(str1);
	
	if(n==0){
		document.getElementById("name").style.border="2px solid red";
	}
	else if(n!=0 && p!=0){
		alert("Congratulations,you entered Admin page!!");
	}
	
	if(p==0){
		document.getElementById("password").style.border="2px solid red";
	}
	else if(p!=0 && n!=0){
		alert("Congratulations,you entered Admin page!!");
	}
		
		
});

