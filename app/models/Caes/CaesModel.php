<?php

require_once DIR_PATH.'/core/conexao.php';

class CaesModel {
    private $id;
    private $nome;
    private $raca;
    private $idade;
    private $peso;
    private $nomePai;
    private $nomeMae;
    private $foto;
    private $dataCadastro;
    private $sexo;

    public function setId($id){
        $this->id = $id;
    }

    public function setNome($nome){
        $this->nome = $nome;
    }

    public function setRaca($raca){
        $this->raca = $raca;
    }

    public function setIdade($idade){
        $this->idade = $idade;
    }

    public function setPeso($peso){
        $this->peso = $peso;
    }

    public function setNomePai($nomePai){
        $this->nomePai = $nomePai;
    }

    public function setNomeMae($nomeMae){
        $this->nomeMae = $nomeMae;
    }

     public function setFoto($foto){
        $this->foto = $foto;
    }

    public function setDataCadastro($dataCadastro){
        $this->dataCadastro = $dataCadastro;
    }

    public function setSexo($sexo){
        $this->sexo = $sexo;
    }

    //Metodos Get
    public function getId(){
        return $this->id;
    }
    public function getNome(){
        return $this->nome;
    }
    public function getRaca(){
        return $this->raca;
    }
    public function getIdade(){
         return $this->idade;
    }
    public function getPeso(){
        return $this->peso;
    }
    public function getNomePai(){
        return $this->nomePai;
    }
    public function getNomeMae(){
        return $this->nomeMae;
    }
     public function getFoto(){
        return $this->foto;
    }
    public function getDataCadastro(){
        return $this->dataCadastro;
    }
    public function getSexo(){
        return $this->sexo;
    }

   public function incluir(){
        session_start();
        $conn = new Conexao();
        $conn = $conn->conectar(); 

        $stmt = $conn->prepare("INSERT INTO CAES (`NOME`, `RACA`, `IDADE`, `PESO`, `NOME_PAI`, `NOME_MAE`, `FOTO`, `DATA_CADASTRO`, `SEXO`) VALUES (?,?,?,?,?,?,?,?,?)");
        try {
            if($stmt->execute([$this->getNome(), $this->getRaca(), $this->getIdade(), $this->getPeso(), $this->getNomePai(), $this->getNomeMae(), $this->getFoto(), 
                                                                                      $this->getDataCadastro(), $this->getSexo()])) {
                return true;
            }                                                                     
        } catch(PDOException $e) {
            $_SESSION["MsgErroCao"] = "Ocorreu algum erro ao cadastrar o Cão" . $e->getMessage();;
        }
        
        return false;   
    }  

    public function editar(){
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("UPDATE caes SET NOME = ?, RACA = ?, IDADE = ?, PESO = ?, NOME_PAI = ?, NOME_MAE = ?, SEXO = ?, FOTO = ?  WHERE id = ?");
        try {
            if($stmt->execute([$this->getNome(), $this->getRaca(), $this->getIdade(), $this->getPeso(), $this->getNomePai(), $this->getNomeMae(), $this->getSexo(),$this->getFoto(), $this->getId()])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroCao"] = "Ocorreu algum erro ao editar o Cão";
        }

        return false;   
    }

    public function excluir(){
        $conn = new Conexao();
        $conn = $conn->conectar();

        // Atualiza o registro
        $stmt = $conn->prepare("DELETE FROM caes WHERE ID = ?");
        try {
             if($stmt->execute([$_GET['idExcluirCao']])) {
                return true;
            }
        } catch(PDOException $e) {
            $_SESSION["MsgErroExcluirCao"] = "Ocorreu algum erro ao excluir o Cão";
        }

        return false;
    } 

    public function ConsultarCao(){
        $conn = new Conexao();
        $conn = $conn->conectar();
        $stmt = $conn->prepare("SELECT * FROM caes where id = ?");      
        $stmt->execute([$_GET['idCao']]);
        return $stmt->fetch(PDO::FETCH_ASSOC);
    }

    public function CaoExiste() {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM caes WHERE id = ?");
        $stmt->execute([$this->getId()]);
        $result = $stmt->fetchColumn();
        return $result > 0;
    }

    public function consultar(){
        $conn = new Conexao();
        $conn = $conn->conectar();        
        $stmt = $conn->prepare("SELECT * FROM caes");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }  
}
?>