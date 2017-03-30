function showRecipeInfo(id){
		
		// Get the modal
		var modal = document.getElementById('myModal');
		var modalP = document.getElementById('modalP');
		var mydiv = document.getElementById(id)
		//copy info from that link's hidden div
		modalP.innerHTML = mydiv.innerHTML;
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];

		// opens the modal
		modal.style.display = "block";
		document.body.style.overflow = "hidden";
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
			document.body.style.overflow = "auto";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
				document.body.style.overflow = "auto";
			}
		}
		
}