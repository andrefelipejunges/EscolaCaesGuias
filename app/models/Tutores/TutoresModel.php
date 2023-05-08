<?php

require_once DIR_PATH.'/core/conexao.php';

class TutoresModel{

    private $id;
    private $nome;
    private $usuario; 
    private $cpf;
    private $nascimento;

    //Metodos Set
    public function setNome($nome){
        $this->nome = $nome;
    }
    public function setUsuario($usuario){
        $this->usuario = $usuario;
    }
    public function setCPF($cpf){
        $this->cpf = $cpf;
    }
    public function setNascimento($nascimento){
        $this->nascimento = $nascimento;
    }
    //Metodos Get
    public function getNome(){
        return $this->nome;
    }
    public function getUsuario(){
        return $this->usuario;
    }
    public function getCpf(){
        return str_replace(['.', '-'], '', $this->cpf);
    }
    public function getNascimento(){
        return $this->nascimento;
    }

   public function incluir(){
        session_start();
        $conn = new Conexao();
        $conn = $conn->conectar(); 

        $stmt = $conn->prepare("INSERT INTO tutores (`NOME`, `USUARIO`, `CPF`, `DATA_NASCIMENTO` ) VALUES (?,?,?,?)");
        try {
            if($stmt->execute([$this->getNome(), $this->getUsuario(), $this->getCpf(), $this->getNascimento()])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroCadastroTutor"] = "Ocorreu algum erro ao cadastrar o tutor";
        }
        
        return false;   
    }  

    public function editar(){
        session_start();
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("UPDATE tutores SET NOME = ?, CPF = ?, DATA_NASCIMENTO = ? WHERE USUARIO = ?");
        try {
            if($stmt->execute([$this->getNome(), $this->getCpf(), $this->getNascimento(), $this->getUsuario()])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroEditarTutor"] = "Ocorreu algum erro ao editar o tutor";
        }

        return false;   
    }

    public function TutorExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM tutores WHERE USUARIO = ?");
        $stmt->execute([$this->getUsuario()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function ConsultarTutorLogado(){
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM tutores where USUARIO = ?");
        $stmt->execute([$_SESSION["id_usuario_logado"]]);
        return $stmt->fetch(PDO::FETCH_ASSOC);

    }
}
?>