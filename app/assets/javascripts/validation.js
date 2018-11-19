if (window.location.href.includes('/lost_animals') || window.location.href.includes('/found_animals')) {
  let today = new Date();
  let dd = today.getDate();
  let mm = today.getMonth()+1;
  let yyyy = today.getFullYear();

  if (dd<10) {
    dd='0'+dd
  } 
  if (mm<10) {
    mm='0'+mm
  } 

  today = yyyy+'-'+mm+'-'+dd;

  document.querySelector(".datefield").setAttribute("max", today);
}

if (window.location.pathname == ('/users/new')) {
  let password = document.querySelector(".password")
  let password2 = document.querySelector(".confirm-password");

  function confirmPassword(){
    if(password.value != password2.value) {
      password2.setCustomValidity("Passwords Don't Match");
    } else {
      password2.setCustomValidity('');
    }
  }

  password.addEventListener('change', confirmPassword)
  password2.addEventListener('blur', confirmPassword);

  let email = document.querySelector(".email")
  let email2 = document.querySelector(".confirm-email");

  function confirmEmail(){
    if(email.value != email2.value) {
      email2.setCustomValidity("Email's Don't Match");
    } else {
      email2.setCustomValidity('');
    }
  }

  email.addEventListener('change', confirmEmail);
  email2.addEventListener('blur', confirmEmail);
}