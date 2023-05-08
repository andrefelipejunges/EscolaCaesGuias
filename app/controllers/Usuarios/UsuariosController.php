<?php

require_once DIR_PATH.'/app/models/Usuarios/UsuariosModel.php';

class UsuariosController {

    //private $usuario;

    public function __construct(){
        $this->usuario = new UsuariosModel();
    }

    private function incluir(){
        session_start();
        $this->usuario->setLogin($_POST['login']);
        $this->usuario->setSenha($_POST['senha']);
        $this->usuario->setEmail($_POST['email']);

        $result = $this->usuario->incluir();
    
        if($result >= 1){
            $_SESSION["MsgSucessoUsuario"] = "Usuário cadastrado com sucesso";
        }
    
        header('Location:'.URL_BASE.'app/views/Usuarios/UsuariosView.php');
    }

    // Função que retorna todos os usuários do banco de dados
    public function consultar() {
        // Chama a função "consultar" do modelo de usuários
        $resultado = $this->usuario->consultar();
        // Retorna o resultado como um array de objetos
        return $resultado;
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        //die(var_dump($actionName));
        switch ($actionName) {
            case "cadastrarUsuario":
            $this->incluir();
            break;
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
