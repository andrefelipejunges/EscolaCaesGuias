<?php

require_once DIR_PATH.'/core/conexao.php';

class UsuariosModel{

    private $login;
    private $senha;
    private $email;

    //Metodos Set
    public function setLogin($string){
        $this->login = $string;
    }
    public function setSenha($string){
        $this->senha = $string;
    }
    public function setEmail($string){
        $this->email = $string;
    }
    //Metodos Get
    public function getLogin(){
        return $this->login;
    }
    public function getSenha(){
        return $this->senha;
    }
    public function getEmail(){
        return $this->email;
    }

    public function incluir(){
        session_start();
        $conn = new Conexao();
        $conn = $conn->conectar();  

        if ($this->LoginJaExiste()) {
            $_SESSION["MsgLoginJaCadastrado"] = "Login já cadastrado";
            
        }
        else
            if ($this->EmailJaExiste()) {
                $_SESSION["MsgEmailJaCadastrado"] = "Email já cadastrado";
        }
        else
        {
            // Insere o novo registro
            $stmt = $conn->prepare("INSERT INTO usuarios (`LOGIN`, `SENHA`, `EMAIL`) VALUES (?,?,?)");
            try {
                if($stmt->execute([$this->getLogin(), $this->getSenha(), $this->getEmail()])) {
                    return true;
                }
            } catch(PDOException $e) {
                // Exibe uma mensagem de erro mais descritiva para o usuário
                $_SESSION["MsgErroUsuario"] = "Ocorreu algum erro ao cadastrar o usuário";
            }
        }

        return false;
    }

    public function LoginJaExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM usuarios WHERE LOGIN = ?");
        $stmt->execute([$this->getLogin()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function EmailJaExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM usuarios WHERE EMAIL = ?");
        $stmt->execute([$this->getEmail()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function consultar(){
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM usuarios");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>