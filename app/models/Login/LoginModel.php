<?php

require_once DIR_PATH.'/core/Conexao.php';

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

    public function ObterIdUsuario() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT id FROM usuarios WHERE login=? AND senha=?");
        $stmt->execute([$this->login, $this->senha]);

        if ($stmt->rowCount() == 1) {
            // Se houver exatamente 1 linha no resultado, retorna o ID
            return $stmt->fetchColumn();
        } else {
            // Caso contrário, retorna falso
            return false;
        }
    }

    public function ObterNomeUsuario($id) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT nome FROM tutores WHERE usuario=?");
        $stmt->execute([$id]);

        if ($stmt->rowCount() == 1) {
            // Se houver exatamente 1 linha no resultado, retorna o Nome
            return $stmt->fetchColumn();
        } else {
            // Caso contrário, retorna falso
            return false;
        }
    }
}

?>