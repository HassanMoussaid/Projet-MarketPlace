<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Accueil</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">


<style>
* {
	box-sizing: border-box
}

img {
	max-width: 100%
}

.caroussel_diapo input {
	position: absolute;
	left: -9999px
}

.caroussel_diapo {
	position: relative;
	text-align: center;
	margin: 0 auto
}

.contenu_carou {
	width: 500px;
	height: 332px;
	margin: 2rem auto;
	perspective: 1000px
}

.caroussel {
	position: relative;
	transform-style: preserve-3d;
	width: 500px;
	height: 332px;
	transition: 1s transform
}

.caroussel img {
	position: absolute;
	top: 0;
	left: 0;
	outline: 1px solid transparent;
	backface-visibility: hidden;
	will-change: transform;
	transition: 1s transform
}

.caroussel img:nth-child(1) {
	transform: translate3d(0, 0, 540px) scale(.8)
}

.caroussel img:nth-child(2) {
	transform: rotateY(45deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(3) {
	transform: rotateY(90deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(4) {
	transform: rotateY(135deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(5) {
	transform: rotateY(180deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(6) {
	transform: rotateY(225deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(7) {
	transform: rotateY(270deg) translateZ(540px) scale(.8)
}

.caroussel img:nth-child(8) {
	transform: rotateY(315deg) translateZ(540px) scale(.8)
}

.caroussel_diapo input[type=radio]+label {
	cursor: pointer;
	background-color: hsl(203, 77%, 81%);
	display: inline-block;
	width: 20px;
	border-radius: 50%;
	height: 20px
}

.caroussel_diapo input[type=radio]:checked+label {
	background-color: hsl(203, 77%, 61%)
}

/*gauche*/
.caroussel_diapo #carou_un:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px)
}

.caroussel_diapo #carou_deux:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-45deg)
}

.caroussel_diapo #carou_trois:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-90deg)
}

.caroussel_diapo #carou_quatre:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-135deg)
}

.caroussel_diapo #carou_cinq:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-180deg)
}

.caroussel_diapo #carou_six:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-225deg)
}

.caroussel_diapo #carou_sept:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-270deg)
}

.caroussel_diapo #carou_huit:checked ~ .contenu_carou .caroussel {
	transform: translateZ(-540px) rotateY(-315deg)
}

/*droite*/
.caroussel_diapo #carou_un:checked ~ .contenu_carou .caroussel img:nth-child(1)
	{
	transform: translateZ(540px) scale(1)
}

.caroussel_diapo #carou_deux:checked ~ .contenu_carou .caroussel img:nth-child(2)
	{
	transform: rotateY(45deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_trois:checked ~ .contenu_carou .caroussel img:nth-child(3)
	{
	transform: rotateY(90deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_quatre:checked ~ .contenu_carou .caroussel img:nth-child(4)
	{
	transform: rotateY(135deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_cinq:checked ~ .contenu_carou .caroussel img:nth-child(5)
	{
	transform: rotateY(180deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_six:checked ~ .contenu_carou .caroussel img:nth-child(6)
	{
	transform: rotateY(225deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_sept:checked ~ .contenu_carou .caroussel img:nth-child(7)
	{
	transform: rotateY(270deg) translateZ(540px) scale(1)
}

.caroussel_diapo #carou_huit:checked ~ .contenu_carou .caroussel img:nth-child(8)
	{
	transform: rotateY(315deg) translateZ(540px) scale(1)
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
					<a class="navbar-brand" href="#">Accueil</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarColor01" aria-controls="navbarColor01"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarColor01">
						<ul class="navbar-nav mr-auto">
							<li class="nav-item"><a class="nav-link" href="#">En
									vente <span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#">Favori
									<span class="sr-only">(current)</span>
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									class="sr-only">(current)</span>Messagerie
							</a></li>
							<li class="nav-item"><a class="nav-link" href="#"> <span
									class="sr-only">(current)</span>Mes Objets
							</a></li>
						</ul>
						<div class="form-inline my-2 my-lg-0">

							<div class="btn-group" role="group"
								aria-label="Button group with nested dropdown">
								<div class="btn-group" role="group">
									<img id="btnGroupDrop1" type="button"
										class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
										aria-haspopup="true" aria-expanded="false" alt="image"
										width="100" height="75"
										src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png">

									<div class="dropdown-menu" aria-labelledby="btnGroupDrop1"
										style="">
										<a class="dropdown-item" href="#">Paramètre</a> <a
											class="dropdown-item" href="#">Deconnexion</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<br>
		<div style="border: solid;">
			<div class="row" >
			<div class="col-md-4 ml-auto mr-auto">
			</div>
				<div class="col-md-4 ml-auto mr-auto">
					<h4 class="text-center">Titre</h4>
				</div>
				<div class="col-4">
					<div class="text-right">
						<button type="button" class="btn btn-primary text-right">Favori</button>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class='caroussel_diapo'>
						<input checked id="carou_un" name="rotation" type="radio">
						<label for="carou_un"></label> 
						<input id="carou_deux" name="rotation" type="radio"> 
						<label for="carou_deux"></label>
						<input id="carou_trois" name="rotation" type="radio"> 
						<label for="carou_trois"></label> 
						<input id="carou_quatre" name="rotation" type="radio"> 
						<label for="carou_quatre"></label>
						<div class="contenu_carou">
							<div class="caroussel">
								<img src="https://www.consoglobe.com/wp-content/uploads/2021/11/chat-maison_2079791452_ban.jpg" alt=""> 
								<img src="https://www.consoglobe.com/wp-content/uploads/2021/11/chat-maison_2079791452_ban.jpg" alt=""> 
								<img src="https://www.consoglobe.com/wp-content/uploads/2021/11/chat-maison_2079791452_ban.jpg" alt=""> 
								<img src="https://www.consoglobe.com/wp-content/uploads/2021/11/chat-maison_2079791452_ban.jpg" alt="">
							</div>
						</div>
						
					</div>
				</div>	
			</div>	
			<div class="row" >
				<div class="col-6">
					<p>Description</p>	
				</div>
				<div class="col-6">
					<img id="btnGroupDrop1" alt="image" width="100" height="75"
						src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png">
					<p>Nom prenom</p>
					<p>Tel</p>
					<button type="button" class="btn btn-primary">Message</button>
				</div>
			</div>
			<br>
		</div>
	</div>


		<script src="https://code.jquery.com/jquery-3.5.1.min.js"
			integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0="
			crossorigin="anonymous"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.4.1/cjs/popper.min.js"
			integrity="sha256-T3bYsIPyOLpEfeZOX4M7J59ZoDMzuYFUsPiSN3Xcc2M="
			crossorigin="anonymous"></script>
		<script
			src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
			integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
			crossorigin="anonymous"></script>
</body>
</html>