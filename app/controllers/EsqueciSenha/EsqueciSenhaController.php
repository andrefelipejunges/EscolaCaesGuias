<?php

require_once "../banco/conexao.php";

session_start();

// Verifica se o formulário foi submetido
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  // Verifica se o endereço de e-mail foi enviado
  if (!empty($_POST['email'])) {
    // Valida o endereço de e-mail
    $email = filter_var($_POST['email'], FILTER_VALIDATE_EMAIL);
    echo $email;
    if ($email) {
       //Verifica se o endereço de e-mail existe no banco de dados
     //$stmt = $conn->prepare('SELECT * FROM usuarios WHERE email = :email');
     // $stmt->bindParam(':email', $email);
     // $stmt->execute();
     // $resultado = $stmt->fetch(PDO::FETCH_ASSOC);
     // if ($resultado) {
        // Gera um código de verificação único
       // $codigo_verificacao = str_pad(rand(0, 9999), 4, '0', STR_PAD_LEFT);
       // echo $codigo_verificacao;
        
        // Insere o código de verificação no banco de dados
       // $stmt = $conn>prepare('UPDATE usuarios SET codigo_verificacao = :codigo_verificacao WHERE email = :email');
       // $stmt->bindParam(':codigo_verificacao', $codigo_verificacao);
       // $stmt->bindParam(':email', $email);
       // $stmt->execute();
        
        // Envia um e-mail com o link de redefinição de senha
        $assunto = 'Redefinição de senha';
        $mensagem = 'Olá, <br><br>';
        $mensagem .= 'Para redefinir sua senha, clique no link abaixo: <br><br>';
        //$mensagem .= '<a href="http://www.seusite.com/redefinirsenha.php?email=' . $email . '&codigo=' . $codigo_verificacao . '">Redefinir senha</a> <br><br>';
        $mensagem .= 'Se você não solicitou a redefinição de senha, ignore este e-mail. <br><br>';
        $mensagem .= 'Atenciosamente, <br>';
        $mensagem .= 'Equipe de suporte';
        
        $cabecalho = 'MIME-Version: 1.0' . "\r\n";
        $cabecalho .= 'Content-type: text/html; charset=UTF-8' . "\r\n";
        $cabecalho .= 'From: Seu Nome <feted68742@youke1.com>' . "\r\n";
        
        mail($email, $assunto, $mensagem, $cabecalho);

        $_SESSION["MensagemSucessoEmail"] = "OK";
	    header("Location: EsqueciSenha.php");
     // }   
    }
  }
 }

?>

