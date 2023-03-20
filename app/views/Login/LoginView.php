<?php

include '../Esqueleto/esqueleto.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="../../../assets/css/style.css">
<body>	
	<form method="post" action="logar.php">
		<div class="container-login"> 
			<h1 class="h3 mb-3 font-weight-normal"><b>Login</b></h1>
			<label for="usuario" class="sr-only"></label>
			<input type="text" name="usuario" class="form-control" value="" placeholder="Login" required>
			<label for="senha" class="sr-only">Senha</label>
			<input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
			<a href="EsqueciSenha.php">Esqueci minha senha</a>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
			
		</div>
	</form>

</body>
</html>