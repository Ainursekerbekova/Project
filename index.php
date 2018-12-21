<html>
<head>
	<meta charset = "UTF-8">
	<title>Marvel</title>
	<link rel = "stylesheet" href = "index.css">
	<script src="index.js" defer></script>
</head>
<body>
<div class = "header_section">
    <div class = "headerlogo"><a href="index.php">Marvel Universe</a></div>
    <div class = "headerButton"><a href = "characters.php">Characters</a></div>
    <div class = "headerButton"><a href = "comics.php">Comics</a></div>
    <div class = "headerButton"><a href = "games.php">Games</a></div>
    <div class = "headerButton"><a href = "movies.php">Movies</a></div>
    <?php
    if(isset($_COOKIE['user']) || isset($_COOKIE['admin'])){
        echo "<div class = \"headerButton\" '><a href = \"out.php\">Sign out</a></div>";
    }
    else{
        echo "<div class = \"headerButton\"><a href = \"signin.php\">Sign in</a></div>";
    }
    ?>
</div>
<main class="flex-main">
	<article class="flex-article">
		<div class="slideshow-container">
			<div class="mySlides fade">
				<img src="https://wallpapercave.com/wp/klLMJUx.jpg" style="width:100%">
			</div>

			<div class="mySlides fade">
				<img src="https://wallpapertag.com/wallpaper/full/e/d/1/155541-widescreen-spiderman-wallpaper-hd-1920x1080-for-mac.jpg" style="width:100%">
			</div>

			<div class="mySlides fade">
				<img src="https://i.pinimg.com/originals/a9/71/bb/a971bbac757943386c10ec9c2d98e9e5.jpg" style="width:100%">
			</div>
		</div>
	</article>
</main>
<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
<div class="content">
	<h1>About our Universe</h1>
	<div class="fortext">
		<p class="contenttext">The Marvel Universe is a fictional universe where the stories in most
			American comic book titles and other media published by Marvel Entertainment take place.
			Super-teams such as the Avengers, the X-Men, the Fantastic Four, the Guardians of the Galaxy,
			the Defenders, the Inhumans and other Marvel superheroes live in this universe, including characters
			such as Spider-Man, Captain America, Iron Man, Thor, Daredevil, The Hulk, Wolverine, Punisher,
			Moon Knight, Deadpool, Blade, Ghost Rider, Doctor Strange and numerous others.
		</p>
	</div>
</div>
<footer>
    <p>©2018 MARVEL </p>
    Team project for web course
    <p>Zharryssov Galym,  Baikadamova Gauhar, Sekerbekova Ainur</p>
</footer>
</body>
</html> 


	