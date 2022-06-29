<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<head>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<title>Login</title>

</head>
<body>
	<fieldset style="margin: auto; width: 500px; margin-top: 100px;">
		<form:form action="accueilLogin" method="post" modelAttribute="user">

			<legend>Connexion</legend>
			<div class="form-group">
				<label for="exampleInputEmail1">E-mail</label>
				<form:input type="email" class="form-control" name="mailUser"
					id="exampleInputEmail1" aria-describedby="emailHelp"
					placeholder="Enter email" path="email" />
				<small id="emailHelp" class="form-text text-muted">We'll
					never share your email with anyone else.</small>
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Mot de passe</label>
				<form:input type="password" class="form-control" name="motdepasse"
					id="exampleInputPassword1" placeholder="Password" path="mdp" />
			</div>

			<button type="submit" class="btn btn-primary"
				style="margin-top: 0.5%; width: 500px;">Login</button>
			<br>
		</form:form>
		<form action="inscription" method="post" >
		<label>Envie de nous rejoindre ?</label> 
			<input type="submit" value="Inscription">
		</form>
	</fieldset>



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
