<?php

require_once DIR_PATH.'/app/models/Tutores/TutoresModel.php';

class TutoresController {

    public function __construct(){
        $this->tutor = new TutoresModel();
    }

    private function incluir(){
        session_start();
        $this->tutor->setNome($_POST['nome']);
        $this->tutor->setCpf($_POST['cpf']);
        $this->tutor->setNascimento($_POST['nascimento']);
        $this->tutor->setUsuario($_SESSION["id_usuario_logado"]);     
        $result = $this->tutor->incluir();

        if($result >= 1){
            $_SESSION["MsgSucessoTutor"] = "Tutor cadastrado com sucesso";
        }

        header('Location:'.URL_BASE.'app/views/Tutores/TutoresView.php');
    }

    private function editar(){
        session_start();
        $this->tutor->setNome($_POST['nome']);
        $this->tutor->setCpf($_POST['cpf']);
        $this->tutor->setNascimento($_POST['nascimento']);
        $this->tutor->setUsuario($_SESSION["id_usuario_logado"]);     
        $result = $this->tutor->editar();

        if($result >= 1){
            $_SESSION["MsgSucessoTutor"] = "Tutor alterado com sucesso";
        }

        header('Location:'.URL_BASE.'app/views/Tutores/TutoresView.php');
        die();
    }

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "cadastrarTutor":
            $this->incluir();
            break;
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
