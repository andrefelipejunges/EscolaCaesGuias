<?php

require_once "../banco/config.php";

session_start();

if (isset($_POST['inputLogin']) && isset($_POST['inputPassword'])) {

	$login = $_POST['inputLogin'];
	$password = $_POST['inputPassword'];

	if ($login == 'login' && $password == 'senha') {
		$_SESSION['user'] = 'usuário'; // Define uma variável de sessão com o nome de usuário
		header('Location: index.php'); // Redireciona para a página inicial após o login bem sucedido
		exit();

	} else {
		$error_message = 'Email ou senha incorretos.'; // Define uma mensagem de erro se o login falhar
	}
}
?>

<!DOCTYPE html>
<html>
<head>

	<nav class="navbar fixed-top navbar-light bg-light" style ="background-color:#F8F8FF;">
	    <a class="navbar-brand" href="#"><img src="../imagens/Logo_Escola_Caes_Guias_Keller.png" class ="logo"> </a>
   </nav>

	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<div class="container">
		<form class="form-signin" method="post" action="login.php">
			<h2 class="form-signin-heading">Login</h2>

			<label for="inputLogin" class="sr-only">Email</label>
			<input type="text" name="inputLogin" class="form-control" value="" placeholder="username">
			<label for="inputPassword" class="sr-only">Senha</label>
			<input type="password" id="inputPassword" name="inputPassword" class="form-control"/ placeholder="Senha" required>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			<?php if (isset($error_message)) { ?>
				<div class="alert alert-danger" role="alert"><?php echo $error_message; ?></div>
			<?php } ?>
		</form>
	</div>
</body>
</html>