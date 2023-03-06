<?php

include 'esqueleto.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>	
	<form method="post" action="logar.php">
		<div class="container-login"> 
			<h1 class="h3 mb-3 font-weight-normal"><b>Login</b></h1>
			<label for="usuario" class="sr-only"></label>
			<input type="text" name="usuario" class="form-control" value="" placeholder="Login">
			<label for="senha" class="sr-only">Senha</label>
			<input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
			<a href="EsqueciSenha.php">Esqueci minha senha</a>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			<?php session_start(); ?>
			<?php if (isset($_SESSION["MensagemErroLogin"])) { ?>
			<div class="alert alert-danger" role="alert"><?php echo $_SESSION["MensagemErroLogin"]; ?></div>
			<?php } ?>
			<?php session_destroy(); ?>
		</div>
	</form>

</body>
</html>