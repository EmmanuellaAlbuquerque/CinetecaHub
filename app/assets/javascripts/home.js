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
