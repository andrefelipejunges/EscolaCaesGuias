<?php

require_once DIR_PATH.'/core/conexao.php';

class Usuarios extends Banco {

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
        return $this->setUsuario($this->getLogin(),$this->getSenha(),$this->getEmail());
    }

    public function setLivro($nome,$autor,$quantidade,$preco,$data){
        $conn = new Conexao();
        $conn = $conn->conectar();        

        $stmt = $conn->prepare("INSERT INTO livros (`nome`, `autor`, `quantidade`, `preco`, `data`) VALUES (?,?,?,?,?)");
        $stmt->bind_param("sssss",$nome,$autor,$quantidade,$preco,$data);
         if( $stmt->execute() == TRUE){
            return true ;
        }else{
            return false;
        }        

    }    
}
?>
