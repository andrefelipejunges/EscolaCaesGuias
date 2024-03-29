<?php

require_once DIR_PATH.'/app/models/Login/LoginModel.php';

class LoginController {

    public function autenticar() {
        // Recebe os dados do formulário de login
        $login = $_POST['login'];
        $senha = $_POST['senha'];

        session_start();

        // Cria um novo objeto de usuário
        $user = new Usuario($login, $senha);

        // Chama o método de autenticação do usuário
        $authenticated = $user->autenticar();

        if ($authenticated) {
            // Inicia a sessão do usuário e redireciona para a página principal
            $_SESSION["id_usuario_logado"] = $user->ObterIdUsuario(); 
            $_SESSION["nome_usuario_logado"] = $user->ObterNomeUsuario($_SESSION["id_usuario_logado"]); 

            header('Location:'.URL_BASE.'app/views/Esqueleto/index.php');
        } else {
            // Exibe uma mensagem de erro na página de login
             $_SESSION["MensagemErroLogin"] = "OK";
             header('Location:'.URL_BASE.'app/views/Login/LoginView.php');
        }
    }

    public function logout() {
        // Finaliza a sessão do usuário e redireciona para a página de login
        session_start();
        session_destroy();
        header('Location:'.URL_BASE.'app/views/Login/LoginView.php');
    }

     public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "autenticar":
                $this->autenticar();
                break;
            case "logout":
                $this->logout();
                break;
            default:
                http_response_code(404);
                echo "Página não encontrada.";
        }
    }
}

?>
