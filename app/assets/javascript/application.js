var button = document.getElementById('hum');
var nav = document.getElementById('nav-mobile');

button.addEventListener('click', function () {
  button.classList.toggle('is-active');
  nav.classList.toggle('is-active');
});

// remove is-active class after click action on menu option
var navItem = document.getElementsByClassName('nav-item');
for (i = 0; i < navItem.length; i++) {
  navItem[i].addEventListener('click', function () {
    button.classList.remove('is-active');
    nav.classList.remove("is-active");
  });
}