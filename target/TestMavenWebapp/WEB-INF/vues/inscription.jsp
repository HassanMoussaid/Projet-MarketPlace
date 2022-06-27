<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Inscription</title>

<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">

</head>
<body>

<form>
  <fieldset style="margin: auto; width: 500px; margin-top: 100px;">
    <legend>Inscription</legend>
       <div class="form-group">
      <label for="exampleInputEmail1">Nom</label>
      <input type="text" class="form-control" id="nom" aria-describedby="emailHelp" placeholder="Enter nom">
     
    </div>
       <div class="form-group">
      <label for="exampleInputEmail1">Prenom</label>
      <input type="text" class="form-control" id="prenom" aria-describedby="emailHelp" placeholder="Enter prenom">
      
    </div>
    
    <div class="form-group">
      <label for="exampleInputEmail1">Adresse mail</label>
      <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
    </div>
    <div class="form-group">
      <label for="exampleInputPassword1">Mot de passe</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
     <div class="form-group">
      <label for="exampleInputPassword1">Confirmation de mot de passe</label>
      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
        <button type="submit" class="btn btn-primary" style="margin-top: 1%;width: 500px;">Valider</button>
  </fieldset>
</form>

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