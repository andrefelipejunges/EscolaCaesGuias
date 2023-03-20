<?php

require_once "../banco/conexao.php";

class LoginController {
    public function index() {
        require_once('views/login.php');
    }

    public function autenticar() {
        // Recebe os dados do formulário de login
        $login = $_POST['login'];
        $senha = $_POST['senha'];

        // Cria um novo objeto de usuário
        $user = new User($username, $password);

        // Chama o método de autenticação do usuário
        $authenticated = $user->autenticar();

        if ($authenticated) {
            // Inicia a sessão do usuário e redireciona para a página principal
            session_start();
            header('Location: index.php');
        } else {
            // Exibe uma mensagem de erro na página de login
            $erro = 'Usuário ou senha incorretos.';
            require_once('views/login.php');
        }
    }

    public function logout() {
        // Finaliza a sessão do usuário e redireciona para a página de login
        session_start();
        session_destroy();
        header('Location: login.php');
    }
}

?>