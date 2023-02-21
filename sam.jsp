<script type="text/javascript">
	function registration() {
		var uname = document.getElementById("userNameInput").value;
		var unamePattern=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		
		var pswd = document.getElementById("passWordInput").value;
		var passPattern = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*()-])/;

		var cpswd=document.getElementById("conPassWordInput").value;
		
		var phn=document.getElementById("phnInput").value;
		var phnPattern=/^(?:(?:\+|0{0,2})91(\s*|[\-])?|[0]?)?([6789]\d{2}([ -]?)\d{3}([ -]?)\d{4})$/;
		var otp=document.getElementById("otpInput").value;
		if (uname == '') {
			alert('Please enter a username');
			document.getElementById("userNameInput").focus();
			return false;
		}
		if(!unamePattern.test(uname)){
			alert('Invalid email');
			document.getElementById("userNameInput").value;
			return false;
		}
		if (pswd == '') {
			alert('Please enter password');
			document.getElementById("passWordInput").focus();
			return false;
		}
		if(!passPattern.test(pswd)){
			alert('Upper case, Lower case, Special character and numeric letter are required');
			document.getElementById("passWordInput").focus();
			return false;
		}
		if(cpswd==''){
			alert('Retype password');
			document.getElementById("conPassWordInput").focus();
			return false;
		}
		if(pswd!=cpswd){
			alert('Password mismatch');
			document.getElementById("conPassWordInput").value;
			return false;
		}
		if(phn==''){
			alert('Please enter phone number');
			document.getElementById("phnInput").focus();
			return false;
		}
		if(!phnPattern.test(phn)){
			alert('Invalid phone number');
			document.getElementById("phnInput").focus();
			return false;
		}
		if(otp==''){
			alert('Enter OTP');
			document.getElementById("otpInput").focus();
			return false;
		}
		return true;
</script>
