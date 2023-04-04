<?php

include_once "../../../config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
	require_once DIR_PATH.'app/routes/Routes.php';
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
<body>	

	<form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=autenticar';?>">
		<div class="container-login"> 
			<h1 class="h3 mb-3 font-weight-normal"><b>Login</b></h1>
			<label for="login" class="sr-only"></label>
			<input type="text" name="login" class="form-control" value="" placeholder="Login" required>
			<label for="senha" class="sr-only">Senha</label>
			<input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>
			<a href="http://localhost/EscolaCaesGuias/app/views/EsqueciSenha/EsqueciSenhaView.php"> Esqueci minha senha</a>
			<button class="btn btn-lg btn-primary btn-block" type="submit"  name="submit">Entrar</button>

			<?php if (isset($_SESSION["MensagemErroLogin"])) { ?>
			<div class="alert alert-danger" role="alert"><?php echo "Login ou senha incorretos"; ?></div>
			<?php } ?>
			<?php unset($_SESSION['MensagemErroLogin']); ?>

		</div>
	</form>
</body>
</html>
