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
        $this->tutor->setUsuario($_SESSION["id_usuario_logado"]);     
        $result = $this->tutor->TutorExiste();

        if($result >= 1){
            $this->editar();
        }
        else
            {$this->incluir();}

        header('Location:'.URL_BASE.'app/views/Tutores/TutoresView.php');
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

    public function consultarTutorLogado() {
        // Chama a função "consultar" do modelo de tutores
        $resultado = $this->tutor->ConsultarTutorLogado();

        if ($resultado) {
            $this->tutor->setNome($resultado['NOME']);
            $this->tutor->setCpf($resultado['CPF']);
            $this->tutor->setNascimento($resultado['DATA_NASCIMENTO']);
            $this->tutor->setUsuario($resultado['USUARIO']);
        }

        // Retorna o objeto usuário com as informações do usuário atualmente logado
        return $this->tutor;
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "salvarTutor":
                $this->incluirEditar();
                break;
            case "consultarTutorLogado":
                return $this->consultarTutorLogado();
                break;
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
