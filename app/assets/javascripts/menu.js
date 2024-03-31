function openMenu() {
  let menu = document.getElementById("menu");
  let hamburgerMenu = document.getElementById("hamburger_menu");
  let closeMenu = document.getElementById("close_menu");

  menu.style.display = "block";
  hamburgerMenu.style.display = "none";
  closeMenu.style.display = "block";
}

function closeMenu() {
  let menu = document.getElementById("menu");
  let hamburgerMenu = document.getElementById("hamburger_menu");
  let closeMenu = document.getElementById("close_menu");

  menu.style.display = "none";
  hamburgerMenu.style.display = "block";
  closeMenu.style.display = "none";
}

function setAsActive(link_hashtag) {
  localStorage.setItem('active_link', link_hashtag);
}

function applyActiveState() {
  let tag = localStorage.getItem('active_link');
  let li_active = document.getElementById(tag);
  li_active.id = 'active';
}

document.addEventListener("turbo:load", applyActiveState);

setAsActive();
