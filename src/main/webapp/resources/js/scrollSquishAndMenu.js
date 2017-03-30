//sliding menu stuff
  var roundButton = document.querySelector("#roundButton");
  var menu = document.querySelector("#theMenu");

  roundButton.addEventListener("click", showMenu, false);
  menu.addEventListener("click", hideMenu, false);

  function showMenu(e){
	menu.classList.add("show");
	//so not scrolling in background
	document.body.style.overflow = "hidden";
  }
  function hideMenu(e){
	menu.classList.remove("show");
	e.stopPropagation();
	// resume scrolling
	document.body.style.overflow = "auto";
  }
  
//magic header
  var pagetop, searchArea, yPos;
  function yScroll(){
	pagetop = document.getElementById('pagetop');
	searchArea = document.getElementById('searchArea');
	yPos = window.pageYOffset;
	if(yPos > 150){
      		pagetop.style.height = "125px";
      		pagetop.style.paddingTop = "4px";
      		searchArea.style.height = "2px";
      	} else {
      		pagetop.style.height = "200px";
      		pagetop.style.paddingTop = "2px";
      		searchArea.style.height = "60px";
	}
  }
  window.addEventListener("scroll", yScroll);