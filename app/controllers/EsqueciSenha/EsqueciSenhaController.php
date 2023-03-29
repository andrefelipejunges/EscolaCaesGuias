<?php

require_once DIR_PATH.'/app/models/EsqueciSenha/EsqueciSenhaModel.php';

require_once DIR_PATH.'/vendor/phpmailer/src/PHPMailer.php';
require_once DIR_PATH.'/vendor/phpmailer/src/SMTP.php';
require_once DIR_PATH.'/vendor/phpmailer/src/Exception.php';

class EsqueciSenhaController {

    public function enviarEmail() {
        // Recupera o login informado pelo usuário
        session_start();
        $login = $_POST['login'];

        // Cria uma instância do modelo de usuário
        $usuarioModel = new EsqueciSenhaModel();

        // Verifica se o usuário com o login informado existe
        if ($usuarioModel->existeUsuarioPorLogin($login)) {
            // Gera uma nova senha aleatória
            $novaSenha = $this->gerarNovaSenhaAleatoria();

            // Atualiza a senha do usuário no banco de dados
            $usuarioModel->atualizarSenhaPorLogin($login, $novaSenha);

            // Envia um email com a nova senha para o usuário
            $this->enviarEmailComNovaSenha($login, $novaSenha);
            // Exibe uma mensagem informando que a nova senha foi enviada por email
            $_SESSION["MensagemSucessoEmail"] = "OK";
        } else {
            // Exibe uma mensagem de erro informando que o login informado não existe
            $_SESSION["MensagemErroEmail"] = "OK";
        }

         header('Location:'.URL_BASE.'app/views/EsqueciSenha/EsqueciSenhaView.php');
    }

// Gera uma nova senha aleatória com 8 caracteres
function gerarNovaSenhaAleatoria() {
    $caracteres = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    $tamanho = 8;
    $novaSenha = '';

    for ($i = 0; $i < $tamanho; $i++) {
        $novaSenha .= $caracteres[rand(0, strlen($caracteres) - 1)];
    }

    return $novaSenha;
}

function enviarEmailComNovaSenha($login, $novaSenha) {
    // Instancia um objeto do PHPMailer
    $mail = new PHPMailer\PHPMailer\PHPMailer();
    
    // Define as configurações do servidor SMTP
    $mail->isSMTP();
    $mail->SMTPDebug = 0; // Descomente esta linha para depurar problemas de envio de email
    $mail->Host = 'smtp.gmail.com'; // Substitua pelo servidor SMTP que você está usando
    $mail->SMTPAuth = true;
    $mail->Username = 'escolacaesguias@gmail.com'; // Substitua pelo seu email
    $mail->Password = 'unqqzdwfwkxduxoc'; // Substitua pela sua senha
    $mail->SMTPSecure = PHPMailer\PHPMailer\PHPMailer::ENCRYPTION_SMTPS;
    $mail->Port = 465;

    // Define as informações do remetente e destinatário
    $mail->setFrom('escolacaesguias@gmail.com', 'EscolaCaesGuias');
    $mail->addAddress("escolacaesguias@gmail.com");

    // Define o assunto e o corpo da mensagem
    $mail->CharSet = 'UTF-8';
    $mail->isHTML(true);
    $mail->Subject = 'Nova senha para acesso ao sistema Escola Cães Guias';
    $mail->Body = '
        <html>
            <head>
                <title>Nova senha para acesso ao sistema Escola Cães Guias</title>
                <style>
                    h1 {
                        color: #4CAF50;
                    }
                    .container {
                        border: 1px solid #ccc;
                        padding: 20px;
                        max-width: 600px;
                        margin: 0 auto;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Nova senha para acesso ao sistema Escola Cães Guias</h1>
                    <p>Olá,</p>
                    <p>Uma nova senha foi gerada para o usuário com o login <strong>' . $login . '</strong>. A nova senha é:</p>
                    <p style="font-size: 20px; font-weight: bold;">' . $novaSenha . '</p>
                    <p>Para acessar o sistema, utilize esta nova senha no lugar da antiga.</p>
                    <p>Caso não tenha solicitado a troca da senha, entre em contato conosco imediatamente.</p>
                </div>
            </body>
        </html>
    ';

    // Envia o email e verifica se ocorreu algum erro
    if (!$mail->send()) {
        echo 'Erro ao enviar o email: ' . $mail->ErrorInfo;
    }
}

public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "enviarEmail":
                $this->enviarEmail();
                break;
            default:
                http_response_code(404);
                echo "Página não encontrada.";
        }
    }
}

?>
