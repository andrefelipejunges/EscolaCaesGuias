<?php

class Usuario {
    private $usuario;
    private $senha;

    public function __construct($usuario, $senha) {
        $this->usuario = $usuario;
        $this->password = $password;
    }

    public function autenticar() {
        $login = $_POST['usuario'];
        $senha = $_POST['senha'];

        $stmt = $conn->prepare("SELECT 1 FROM usuarios WHERE login=:login AND senha=:senha");
        $stmt->bindParam(':login', $login);
        $stmt->bindParam(':senha', $senha);
        $stmt->execute();

         if($stmt->rowCount() == 1)
            return true;
        } else {
            return false;
        }
    }

?>