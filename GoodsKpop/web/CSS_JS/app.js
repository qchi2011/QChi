const signUpButton = document.getElementById('signUp');
const signInButton = document.getElementById('signIn');
const auth_wrapper = document.getElementById('auth_wrapper');

signUpButton.addEventListener('click', () => {
	auth_wrapper.classList.add("overlay_right_active");
});

signInButton.addEventListener('click', () => {
	auth_wrapper.classList.remove("overlay_right_active");
});