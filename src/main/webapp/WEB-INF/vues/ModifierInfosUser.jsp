<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Modifier les informations</title>

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
										<a class="dropdown-item" href="#">Param�tre</a> <a
											class="dropdown-item" href="#">Deconnexion</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</nav>
			</div>
		</div>

<form:form>
  <fieldset style="margin: auto; width: 500px; margin-top: 30px;">
    <legend><h4>Modifier vos information</h4></legend>
       <div class="form-group">
      <label for="nom">Nom</label>
      <form:input type="text" class="form-control" id="nom" aria-describedby="telephoneHelp" placeholder="Entrez votre nom"></form:input>
    </div>
    
       <div class="form-group">
      <label for="prenom">Prenom</label>
      <form:input type="text" class="form-control" id="prenom" aria-describedby="telephonelHelp" placeholder="Entrez votre prenom"></form:input>
    </div>
    <div>
    
    <label for="files"> Modifier Votre photo</label><br>
    <form:input id="files" type="file" multiple="multiple" accept="image/jpeg, image/png, image/jpg"></form:input>
   
    </div>
    
    <br>
       
       <div class="form-group">
      <label for="telephone">t�lephone</label>
      <form:input type="tel" class="form-control" id="telephone" aria-describedby="telephonelHelp" placeholder="Entrer un numero de t�lephone"></form:input> 
    </div>
    
    <div class="form-group">
      <label for="exampleInputEmail1">Adresse mail</label>
      <form:input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Entrez votre adresse mail"></form:input>
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    
    <div class="form-group">
      <label for="exampleInputPassword1">Mot de passe</label>
      <form:input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"></form:input>
    </div>
    
     <div class="form-group">
      <label for="exampleInputPassword1">Confirmation de mot de passe</label>
      <form:input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"></form:input>
    </div>
    
        <form:button type="submit" class="btn btn-primary" style="margin-top: 1%;width: 500px;">Valider</form:button>
  </fieldset>
</form:form>

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