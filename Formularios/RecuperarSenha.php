<?php

require_once "../banco/conexao.php";

session_start();

if (isset($_POST['email'])){

	$email = $_POST['email'];

    if($email == "") {
       $_SESSION["MensagemErroEmail"] = "Favor preencher o Email";
    	header("Location: EsqueciSenha.php");
	}
	else
	{
	  $_SESSION["MensagemSucessoEmail"] = "OK";
	  header("Location: EsqueciSenha.php");
	}
}
?>