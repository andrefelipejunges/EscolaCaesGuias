<?php

require_once DIR_PATH.'/app/models/Tutores/TutoresModel.php';

class TutoresController {

    public function __construct(){
        $this->tutor = new TutoresModel();
    }

    private function incluirEditar(){
        session_start();
        $this->tutor->setNome($_POST['nome']);
        $this->tutor->setCpf($_POST['cpf']);
        $this->tutor->setNascimento($_POST['nascimento']);
        $this->tutor->setUsuario($_POST['usuario']);     
        $result = $this->tutor->TutorExiste();

        if($result >= 1){
            $this->editar();
        }
        else
            {$this->incluir();}

        $idTutor = $_POST['id'];
        header('Location: ' . URL_BASE . 'app/views/Tutores/TutoresView.php?idTutor=' . $idTutor);
    }

    private function incluir(){    
        $result = $this->tutor->incluir();

        if($result){
            $_SESSION["MsgSucessoTutor"] = "Tutor cadastrado com sucesso";
        }
    }

    private function editar(){ 
        $result = $this->tutor->editar();
        
        if($result){
            $_SESSION["MsgSucessoTutor"] = "Tutor alterado com sucesso";
        }
    }

    private function excluir(){
        $result = $this->tutor->excluir();

        if($result){
            //$_SESSION["MsgSucessoTutor"] = "Tutor excluído com sucesso";
        }
    }

    public function consultarTutor() {
        // Chama a função "consultar" do modelo de tutores
        $resultado = $this->tutor->ConsultarTutor();

        if ($resultado) {
            $this->tutor->setId($resultado['ID']);
            $this->tutor->setNome($resultado['NOME']);
            $this->tutor->setCpf($resultado['CPF']);
            $this->tutor->setNascimento($resultado['DATA_NASCIMENTO']);
            $this->tutor->setUsuario($resultado['USUARIO']);
        }

        // Retorna o objeto usuário com as informações do usuário atualmente logado
        return $this->tutor;
    }

    public function consultar() {
        // Chama a função "consultar" do modelo de usuários
        $resultado = $this->tutor->consultar();
        // Retorna o resultado como um array de objetos
        return $resultado;
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "salvarTutor":
                $this->incluirEditar();
                break;
            case "consultarTutor":
                return $this->consultarTutor();
                break;
            case "consultarTutor":
                return $this->consultar();
                break;
            case "ExcluirTutor":
                 return $this->excluir();
                break;                
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
