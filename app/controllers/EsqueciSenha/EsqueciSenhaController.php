<?php

require_once DIR_PATH.'/app/models/EsqueciSenha/EsqueciSenhaModel.php';

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

// Envia um email com a nova senha para o usuário
function enviarEmailComNovaSenha($login, $novaSenha) {
    $to = $login;
    $subject = 'Nova senha para acesso ao sistema';
    $message = 'Sua nova senha é: ' . $novaSenha;
    $headers = 'From: escolacaesguias@gmail.com' . "\r\n" .
               'Reply-To: escolacaesguias@gmail.com' . "\r\n" .
               'X-Mailer: PHP/' . phpversion();

    mail($to, $subject, $message, $headers);
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
