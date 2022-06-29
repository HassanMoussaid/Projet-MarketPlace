<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />

<link rel="stylesheet"
	href="https://code.jquery.com/ui/1.11.1/themes/ui-lightness/jquery-ui.css" />

<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script src="http://code.jquery.com/ui/1.11.1/jquery-ui.min.js"></script>
<title>Ajouter un objet</title>
<style>
#result {
	display: flex;
	flex-wrap: wrap;
	gap: 10px;
	padding: 10px 0;
}

.thumbnail {
	height: 192px;
}
</style>
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
					<a class="navbar-brand" href="accueil">Accueil</a>
					<button class="navbar-toggler" type="button"
						data-toggle="collapse" data-target="#navbarColor01"
						aria-controls="navbarColor01" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<div class="collapse navbar-collapse" id="navbarColor01">
						<ul class="navbar-nav mr-auto">
								<form action="accueil" method="post">
								<li class="nav-item"><input type="submit" value="En vente">
								</li>
							</form>

							<form action="favori" method="post">
								<li class="nav-item"><input type="submit" value="Favori">
								</li>
							</form>
							
							<form action="Messagerie" method="post">
								<li class="nav-item"><input type="submit" value="Messagerie">
								</li>
							</form>
								<form action="ajouterObjet" method="post">
								<li class="nav-item"><input type="submit" value="Mes Objets">
								</li>
							</form>

							<form action="mettreEnvente" method="post">
								<li class="nav-item"><input type="submit" value="Mettre en vente">
								</li>
							</form>
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
										<a class="dropdown-item" href="ModifierInfosUser">Paramètre</a> <a
											class="dropdown-item" href="login">Deconnexion</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>


		<form:form action="ajoutObjet" method="post" modelAttribute="objetVente">
			<fieldset style="margin: auto; width: 700px; margin-top: 50px;">
				<legend>
					<strong>Déposer une annonce</strong>
				</legend>
				<div class="form-group">
					<label for="titre">Quel est le titre de l'annonce ?</label> <small
						id="emailHelp" class="form-text text-muted">champs requis</small>
					<br>
					<form:input type="text" class="form-control" id="titre"
						aria-describedby="titreHelp" placeholder="Enter un titre"
						path="nom"></form:input>
				</div>

				<div class="form-group">
					<label for="exampleTextarea">Description</label>
					<form:textarea class="form-control" id="description" rows="3"
						path="description"></form:textarea>
				</div>

				<div class="form-group">
					<label for="titre">Prix</label>
					<br>
					<form:input type="number" class="form-control" id="prix"
						aria-describedby="titreHelp" placeholder="Enter prix"
						path="prix"></form:input>
				</div>
				
					<div class="form-group">
					<form:select class="custom-select" path="idCategorie">
						<form:option selected="" value="">Catégorie</form:option>
						<form:option value="1">One</form:option>
						<form:option value="2">Two</form:option>
						<form:option value="3">Three</form:option>
					</form:select>
				</div>

				<div class="form-group">

					<label for="files">Ajouter les photos de votre objet.
						Selectionnez 1 ou plusieurs</label><br>
					<form:input id="files" type="file" multiple="multiple"
						accept="image/jpeg, image/png, image/jpg" path="photos"></form:input>
					<output id="result"></output>

						<script type="text/javascript">
				document.querySelector("#files").addEventListener("change", (e) => { //ajouter un evenemet sur input file
					  if (window.File && window.FileReader && window.FileList && window.Blob) { //tester si le format est supporter
					    const files = e.target.files; //FILE LIST OBJECT CONTAINING UPLOADED FILES
					    const output = document.querySelector("#result");
					    output.innerHTML = "";
					    for (let i = 0; i < files.length; i++) { // boucle pour parcourir les images
					        if (!files[i].type.match("image")) continue; // ajouter que des imges
					        const picReader = new FileReader(); // lire l'image
					        picReader.addEventListener("load", function (event) { // evenement pour afficher les images
					          const picFile = event.target;
					          const div = document.createElement("div");
					          
					          div.innerHTML = '<img class="thumbnail" src="'+ picFile.result +'" title="'+picFile.name+'"/>';
					       
					          output.appendChild(div);
					          console.log(picFile);
					        });
					        picReader.readAsDataURL(files[i]); //lire l'images
					    }
					  } else {
					    alert("Votre navigateur ne support pas ce format de fichier");
					  }
					});
				
				</script>
				</div>
				<form:button type="submit" class="btn btn-primary"
					style="margin-top: 1%; width: 700px;">Valider</form:button>

			</fieldset>
		</form:form>
	</div>


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