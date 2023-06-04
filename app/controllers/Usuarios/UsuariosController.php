<?php

require_once DIR_PATH.'/app/models/Usuarios/UsuariosModel.php';

class UsuariosController {

    public function __construct(){
        $this->usuario = new UsuariosModel();
    }

    private function incluirEditar(){
        session_start();

        $this->usuario->setId($_POST['id']);
        $this->usuario->setLogin($_POST['login']);
        $this->usuario->setSenha($_POST['senha']);
        $this->usuario->setEmail($_POST['email']);   
        $result = $this->usuario->UsuarioExiste();

        if($result >= 1){
            $this->editar();
        }
        else
            {$this->incluir();}

        $idUsuario = $_POST['id'];
        header('Location: ' . URL_BASE . 'app/views/Usuarios/UsuariosView.php?idUsuario=' . $idUsuario);
    }

    private function incluir(){
        $result = $this->usuario->incluir();

        if($result){
            $_SESSION["MsgSucessoUsuario"] = "Usuário cadastrado com sucesso";
        }
    }

    private function editar(){    
        $result = $this->usuario->editar();
        
        if($result){
            $_SESSION["MsgSucessoUsuario"] = "Usuario alterado com sucesso";
        }
    }

    private function excluir(){
        $result = $this->usuario->excluir();

        if($result){
            $_SESSION["MsgSucessoUsuario"] = "Usuário excluído com sucesso";
        }
    }

    // Função que retorna todos os usuários do banco de dados
    public function consultar() {
        // Chama a função "consultar" do modelo de usuários
        $resultado = $this->usuario->consultar();
        // Retorna o resultado como um array de objetos
        return $resultado;
    }

    public function ConsultarUsuario() {
        // Chama a função "consultar" do modelo de Usuarios
        $resultado = $this->usuario->ConsultarUsuario();

        if ($resultado) {
            $this->usuario->setId($resultado['ID']);
            $this->usuario->setLogin($resultado['LOGIN']);
            $this->usuario->setSenha($resultado['SENHA']);
            $this->usuario->setEmail($resultado['EMAIL']);   
        }
         // Retorna o objeto usuário com as informações do usuário atualmente logado
        return $this->usuario;
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        //die(var_dump($actionName));
        switch ($actionName) {
            case "salvarUsuario":
                $this->incluirEditar();
                break;
            case "ConsultarUsuarios":
                return $this->consultar();
                break;         
            case "ConsultarUsuario":
                 return $this->ConsultarUsuario();
                break;
            case "ExcluirUsuario":
                 return $this->excluir();
                break;
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
