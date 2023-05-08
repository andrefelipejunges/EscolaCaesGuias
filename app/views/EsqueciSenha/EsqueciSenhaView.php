<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

?>

<!DOCTYPE html>
<html>
<head>
	<title>Esqueci Minha Senha</title>
</head>

<body>	
	<form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=enviarEmail';?>">
		<div class="container-login"> 
			<h1 class="h3 mb-3 font-weight-normal"><b>Recuperar Senha</b></h1>
			<p> Digite o seu Login. Você receberá um e-mail com instruções sobre como redefinir a sua senha. </p>
			<label for="email" class ="sr-only"></label>
			<input type="email" name="email" class="form-control" type="email" placeholder="Email" required>

			<?php if (isset($_SESSION["MensagemSucessoEmail"])) { ?>
			<div class="alert alert-success" role="alert"><?php echo "Email de recuperação enviado com sucesso"; ?></div>
			<?php } ?>

			<?php if (isset($_SESSION["MensagemErroEmail"])) { ?>
			<div class="alert alert-danger" role="alert"><?php echo "Não existe um usuário cadastrado com esse Email"; ?></div>
			<?php } ?>

			<?php unset($_SESSION['MensagemSucessoEmail']); ?>
			<?php unset($_SESSION['MensagemErroEmail']); ?>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Obter nova senha</button>
		</div>
	</form>

</body>
</html>