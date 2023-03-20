<?php

include 'esqueleto.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Esqueci Minha Senha</title>
</head>

<body>	
	<form method="post" action="RecuperarSenha.php">
		<div class="container-login"> 
			<h1 class="h3 mb-3 font-weight-normal"><b>Recuperar Senha</b></h1>
			<p> Digite o endereço de e-mail. Você receberá um e-mail com instruções sobre como redefinir a sua senha. </p>
			<label for="email" class="sr-only"></label>
			<input type="email" name="email" class="form-control" value="" placeholder="Email" required>
			<?php session_start(); ?>

			<?php if (isset($_SESSION["MensagemSucessoEmail"])) { ?>
			<div class="alert alert-success" role="alert"><?php echo "Email de recuperação enviado com sucesso"; ?></div>
			<?php } ?>
			<?php session_destroy(); ?>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Obter nova senha</button>
		</div>
	</form>

</body>
</html>