<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Accueil</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

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
		<div class="row">
			<div class="col-4">
				<div class="form-group">
					<select class="custom-select">
						<option selected="">Catégorie</option>
						<option value="1">One</option>
						<option value="2">Two</option>
						<option value="3">Three</option>
					</select>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group">
					<select class="custom-select">
						<option selected="">Trier par</option>
						<option value="1">Prix</option>
						<option value="2">Alphabétique</option>
					</select>
				</div>
			</div>
			<div class="col-4">
				<div class="row">
					<div class="col-6">
						<div class="form-group">
							<input type="text" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" placeholder="Recherche">
						</div>
					</div>
					<div class="col-6">
						<button type="button" class="btn btn-primary">Rechercher</button>
					</div>

				</div>
			</div>
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