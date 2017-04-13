//opens a print window for printing the recipe
function printPage(id){
  //display settings
  var disp_setting="toolbar=yes,location=no,directories=yes,menubar=yes,"; 
  disp_setting+="scrollbars=yes,width=650, height=600, left=100, top=25"; 
  
  //get the content from the hidden div
  var myDiv = document.getElementById(id)
  var content_value = myDiv.innerHTML; 
  
  //create new window using display settings then write to window
  var docprint=window.open("","",disp_setting); 
   docprint.document.open(); 
   docprint.document.write('<html><head><title>Lazy Paleo Baker Recipe</title>'); 
   docprint.document.write('</head><body onLoad="self.print()">');          
   docprint.document.write(content_value);          
   docprint.document.write('</body></html>'); 
   docprint.document.close(); 
   docprint.focus(); 
}