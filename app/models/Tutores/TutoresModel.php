<?php

require_once DIR_PATH.'/core/conexao.php';

class TutoresModel{

    private $id;
    private $nome;
    private $usuario; 
    private $cpf;
    private $nascimento;

    //Metodos Set
    public function setId($id){
        $this->id = $id;
    }
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
    public function getId(){
        return $this->id;
    }    
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

    public function excluir(){
        //session_start();
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("DELETE FROM tutores WHERE ID = ?");
        try {
             if($stmt->execute([$_GET['idExcluirTutor']])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroExcluirTutor"] = "Ocorreu algum erro ao excluir o tutor";
        }

        return false;
    }      

    public function TutorExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM tutores WHERE ID = ?");
        $stmt->execute([$this->getId()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function ConsultarTutor(){
        $conn = new Conexao();
        $conn = $conn->conectar();
        $stmt = $conn->prepare("SELECT * FROM tutores where id = ?");      
        $stmt->execute([$_GET['idTutor']]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function consultar(){
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM tutores");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>