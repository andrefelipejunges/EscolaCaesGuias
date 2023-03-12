<?php

require_once "../banco/conexao.php";

session_start();

if (isset($_POST['usuario']) && isset($_POST['senha'])) {

	$login = $_POST['usuario'];
    $senha = $_POST['senha'];

    $stmt = $conn->prepare("SELECT * FROM usuarios WHERE login=:login AND senha=:senha");
    $stmt->bindParam(':login', $login);
    $stmt->bindParam(':senha', $senha);
    $stmt->execute();

    if($stmt->rowCount() == 1) {
        header("Location: index.php");
        exit;
    } else {
    	$_SESSION["MensagemErroLogin"] = "Login ou senha incorretos.";
    	header("Location: login.php");
    }
}
?>