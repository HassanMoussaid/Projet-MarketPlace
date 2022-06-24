<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
<meta charset="UTF-8" />
<title>Spring Boot Thymeleaf - Bootstrap WebJars</title>

    <link th:rel="stylesheet" th:href="@{/assets/bootstrap.css} "/>

</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col">
				<button type="button" class="btn btn-primary">OK</button>

			</div>
		</div>
	</div>

<script th:src="@{/assets/jquery-3.6.0.min.js}"></script>
<script th:src="@{/assets/bootstrap.js}"></script>

</body>
</html>