<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title> it-news </title>
	<script type="text/javascript" src="{{ URL::to('assets/js/jquery.min.js') }}"></script>
	<style type="text/css">
		@import "http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css";

		body {
		  background: #39D;
		}

		.circular-menu {
		  width: 250px;
		  height: 250px;
		  margin: 0 auto;
		  position: relative;
		  margin-top: 130px;
		}

		.circle {
		  width: 250px;
		  height: 250px;
		  opacity: 0;
		  
		  -webkit-transform: scale(0);
		  -moz-transform: scale(0);
		  transform: scale(0);

		  -webkit-transition: all 0.4s ease-out;
		  -moz-transition: all 0.4s ease-out;
		  transition: all 0.4s ease-out;
		}

		.open.circle {
		  opacity: 1;

		  -webkit-transform: scale(1);
		  -moz-transform: scale(1);
		  transform: scale(1);
		}

		.circle a {
		  text-decoration: none;
		  color: white;
		  display: block;
		  height: 40px;
		  width: 40px;
		  line-height: 40px;
		  margin-left: -20px;
		  margin-top: -20px;
		  position: absolute;
		  text-align: center;

		}

		.circle a:hover {
		  color: #eef;
		}

		.menu-button {
		  position: absolute;
		  top: calc(50% - 30px);
		  left: calc(50% - 30px);
		  text-decoration: none;
		  text-align: center;
		  color: #444;
		  border-radius: 50%;
		  display: block;
		  height: 40px;
		  width: 40px;
		  line-height: 40px;
		  padding: 10px;
		  background: #dde;
		}

		.menu-button:hover {
		  background-color: #eef;
		}

		/* Author stuff */
		h1.author {
		  text-align:center;
		  color: white;
		  font-family: Helvetica, Arial, sans-serif;
		  font-weight: 300;
		}

		h1.author a {
		  color: #348;
		  text-decoration:none;
		}

		h1.author a:hover {
		  color: #ddd;
		} 
	</style>
</head>
<body>


	
<nav class="circular-menu">

  <div class="circle">
    <a href="{{ URL::to('') }}" class="fa fa-home fa-2x"></a>
    <a href="#" class="fa fa-facebook fa-2x"></a>
    <a href="#" class="fa fa-twitter fa-2x"></a>
    <a href="#" class="fa fa-linkedin fa-2x"></a>
    <a href="#" class="fa fa-github fa-2x"></a>
    <a href="#" class="fa fa-rss fa-2x"></a>
    <a href="#" class="fa fa-pinterest fa-2x"></a>
    <a href="#" class="fa fa-asterisk fa-2x"></a>
  </div>
  
  <a href="#" class="menu-button fa fa-bars fa-2x"></a>

</nav>

<h1 class="author">Developed by <a href="{{ URL::to('') }}" target="_blank">it-news</h1>
<script type="text/javascript">

	var items = document.querySelectorAll('.circle a');

	for(var i = 0, l = items.length; i < l; i++) {
	  items[i].style.left = (50 - 35*Math.cos(-0.5 * Math.PI - 2*(1/l)*i*Math.PI)).toFixed(4) + "%";
	  
	  items[i].style.top = (50 + 35*Math.sin(-0.5 * Math.PI - 2*(1/l)*i*Math.PI)).toFixed(4) + "%";
	}

	document.querySelector('.menu-button').onclick = function(e) {
	   e.preventDefault(); document.querySelector('.circle').classList.toggle('open');
}

</script>
</body>
</html>