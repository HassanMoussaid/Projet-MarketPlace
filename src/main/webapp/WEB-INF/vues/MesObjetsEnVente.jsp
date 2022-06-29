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
					<form:button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarColor01" aria-controls="navbarColor01"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</form:button>

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
		<div class="row">
			<div class="col-4">
				<div class="form-group">
					<form:select class="custom-select">
						<form:option selected="">Catégorie</form:option>
						<form:option value="1">One</form:option>
						<form:option value="2">Two</form:option>
						<form:option value="3">Three</form:option>
					</form:select>
				</div>
			</div>
			<div class="col-4">
				<div class="form-group">
					<form:select class="custom-select">
						<form:option selected="">Trier par</form:option>
						<form:option value="1">Prix</form:option>
						<form:option value="2">Alphabétique</form:option>
					</form:select>
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
						<form:button type="button" class="btn btn-primary">Rechercher</form:button>
					</div>

				</div>
			</div>
		</div>


		<div class="table-info">
			<a href="#">
				<div class="row">
					<div class="col-2">
						<img id="btnGroupDrop1" alt="image" width="100" height="75"
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png">
					</div>
					<div class="col-5">
						<p>Titre</p>
						<p>Description</p>
					</div>
					<div class="col-5">
						<p>Vendeur</p>
						<p>Prix</p>
					</div>
				</div>
			</a>
		</div>
		<hr>
		<div class="table-info">
			<a href="#">
				<div class="row">
					<div class="col-2">
						<img id="btnGroupDrop1" alt="image" width="100" height="75"
							src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6e/Breezeicons-actions-22-im-user.svg/1200px-Breezeicons-actions-22-im-user.svg.png">
					</div>
					<div class="col-5">
						<p>Titre</p>
						<p>Description</p>
					</div>
					<div class="col-4">
						<p>Vendeur</p>
						<p>Prix</p>
					</div>
					<div class="col-1">
						<form:button type="button" class="btn btn-info">Delete</form:button>
					</div>
				</div>
			</a>
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