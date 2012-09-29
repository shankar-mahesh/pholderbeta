$(document).ready(function(){


//--------------navbar link backgrounds

	$('nav a').on('click', function(){
		$('nav a').removeClass('greybackground');
		$(this).addClass('greybackground');
	});
	

//--------------navbar link backgrounds END







//--------------home page picture interaction

	$('.toppic').on('mouseover', function(){
		$('.toppic').css({"opacity": "0.5"});
		$(this).css({"opacity": "1"});
	});


	$('.toppic').on('mouseleave', function(){
		$('.toppic').css({"opacity": "1"});
	});


	$('.popup').hide();
	$('.logo').on('click', function(){
		$('.popup').toggle();
	});

//--------------home page picture interaction END




//--------------submit form validation

	$('form span').hide();

	
	var emailregex = /[A-za-z]+[0-9]*[-]*[A-za-z0-9]+@[a-z0-9]+[-]*[a-z0-9]+\.[a-z]+/
	var passregex = /.*[0-9]+.*/

	var usernameInput = $('#username'),
		emailInput = $('#email'),
		passwordInput = $('#password'),
		confirmInput = $('#confirm_password'),

		usernameError = $('#username_error'),
		emailError = $('#email_error'),
		passwordError = $('#password_error'),
		confirmError = $('#confirm_error'),

		accountForm = $('#accountsubmit');

	accountForm.submit(function(){
	function validateUsername() {
		if (usernameInput.val().length < 3) {
			usernameError.show();
			usernameInput.addClass('redborder');
			return false
		} else {
			usernameError.hide();
			usernameInput.removeClass('redborder');
			return true;
		}
	}

	function validateEmail() {
		if (emailregex.test(emailInput.val())) {
			emailError.hide();
			emailInput.removeClass('redborder');
			return true;
		} else {
			emailError.show();
			emailInput.addClass('redborder');
			return false;
		}
	}

	function validatePassword() {
		if (passregex.test(passwordInput.val())) {
			passwordError.hide();
			passwordInput.removeClass('redborder');
			return true;
		} else {
			passwordError.show();
			passwordInput.addClass('redborder');
			return false;
		}
	}

	function validateConfirm() {
		if (confirmInput.val() == passwordInput.val()) {
			confirmError.hide();
			confirmInput.removeClass('redborder');
			return true;
		} else {
			confirmError.show();
			confirmInput.addClass('redborder');
			return false;
		}
	}



	if (validateUsername() & validateEmail() & validatePassword() & validateConfirm()) {
		var fields = $('#accountsubmit').serializeArray()
		$.each(fields, function(i, field){
			console.log(field.name + "= " + field.value);
		});
	}

	return false;

	});




});
