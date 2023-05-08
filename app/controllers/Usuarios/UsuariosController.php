<?php

require_once DIR_PATH.'/app/models/Usuarios/UsuariosModel.php';

class UsuariosController {

    //public $usuarios;

    public function __construct(){
        $this->usuario = new UsuariosModel();
        //$this->incluir();
        //$this->consultar();
    }

    // Função que retorna todos os usuários do banco de dados
    public function consultar() {
        // Chama a função "consultar" do modelo de usuários
        $resultado = $this->usuario->consultar();
        // Retorna o resultado como um array de objetos
        return $resultado;
    }

    private function incluir(){
        $this->usuario->setLogin($_POST['login']);
        $this->usuario->setSenha($_POST['senha']);
        $this->usuario->setEmail($_POST['email']);
        $result = $this->usuario->incluir();
        if($result >= 1){
            echo "<script>alert('Registro incluído com sucesso!');document.location='../views/Usuarios/UsuariosView.php'</script>";
        }else{
            echo "<script>alert('Erro ao gravar registro!, verifique se o livro não está duplicado');history.back()</script>";
        }
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "enviarEmail":
                $this->enviarEmail();
                break;
            case "cadastrarUsuario":
                $this->incluir();
                break;
            case "consultarUsuario":
                return $this->consultar();
                break;                
            default:
                http_response_code(404);
                echo "Página não encontrada.";
        }
    }
}

?>
