<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset = "UTF-8">
		<title>Marvel</title>
		<link rel = "stylesheet" href = "style.css">
		<meta http-equiv="Content-Type">
	</head>
	<body>
		<div class = "header">
			<div class = "header_section">
				<div class = "header_item_headerlogo">
					Marvel Universe
				</div>
				<div class = "header_item_headerButton"><a href = "#">
				Comics</a></div>
				<div class = "header_item_headerButton"><a href = "#">
				Games</a></div>
			    <div class = "header_item_headerButton"><a href = "#">
				Movies</a></div>
			</div>
			<div class = "header_section">
			<div class = "header_item_headerButton"><a href = "#">
				Sign in</a></div>
			</div>
		</div>

	<div class="slideshow-container">

	<div class="mySlides fade">
	  <div class="numbertext">1 / 3</div>
	  <img src="https://images4.alphacoders.com/530/53016.jpg" style="width:100%">
	  <div class="text">Caption Text</div>
	</div>

	<div class="mySlides fade">
	  <div class="numbertext">2 / 3</div>
	  <img src="https://images4.alphacoders.com/283/283338.jpg" style="width:100%">
	  <div class="text">Caption Two</div>
	</div>

	<div class="mySlides fade">
	  <div class="numbertext">3 / 3</div>
	  <img src="https://www.pixelstalk.net/wp-content/uploads/2015/12/Avengers-marvel-comics-wallpaper-background.jpg" style="width:100%">
	  <div class="text">Caption Three</div>
	</div>

	</div>
<br>
	<div style="text-align:center">
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	  <span class="dot"></span> 
	</div>

<script>
var slideIndex = 0;
showSlides();

function showSlides() {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>
	</body>
</html>
	