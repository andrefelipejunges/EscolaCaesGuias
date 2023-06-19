<?php

require_once DIR_PATH.'/core/conexao.php';

class UsuariosModel{

    private $id;
    private $login;
    private $senha;
    private $email;

    //Metodos Set
    public function setId($id){
        $this->id = $id;
    }
    public function setLogin($login){
        $this->login = $login;
    }
    public function setSenha($senha){
        $this->senha = $senha;
    }
    public function setEmail($email){
        $this->email = $email;
    }
    //Metodos Get
    public function getId(){
        return $this->id;
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

    public function editar(){
        session_start();
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("UPDATE usuarios SET LOGIN = ?, SENHA = ?, EMAIL = ? WHERE ID = ?");
        try {
             if($stmt->execute([$this->getLogin(), $this->getSenha(), $this->getEmail(), $this->getId()])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroEditarTutor"] = "Ocorreu algum erro ao editar o usuario";
        }

        return false;   
    }

    public function excluir(){
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("DELETE FROM usuarios WHERE ID = ?");
        try {
             if($stmt->execute([$_GET['idExcluirUsuario']])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroExcluirUsuario"] = "Ocorreu algum erro ao excluir o usuario";
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

    public function UsuarioExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM usuarios WHERE ID = ?");
        $stmt->execute([$this->getId()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function consultar(){
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM usuarios where ID <> ?");
        $stmt->execute([$_SESSION["id_usuario_logado"]]);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }

    public function ConsultarUsuario(){
        $param = 0;
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM usuarios where id = ?");        
        $param = $_GET['idUsuario'];
        $stmt->execute([$param]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }
}
?>