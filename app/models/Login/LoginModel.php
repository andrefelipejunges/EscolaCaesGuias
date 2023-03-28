<?php

require_once DIR_PATH.'/core/conexao.php';

class Usuario {
    private $login;
    private $senha;

    public function __construct($login, $senha) {
        $this->login = $login;
        $this->senha = $senha;
    }

    public function autenticar() {

        $conn = new Conexao(); // adicione esta linha para inicializar a variável $conn
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT 1 FROM usuarios WHERE login=? AND senha=?");
        $stmt->execute([$this->login, $this->senha]);

         if($stmt->rowCount() == 1){
            return true;
        } else {
            return false;
        }
    }
}

?>