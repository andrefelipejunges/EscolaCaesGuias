<?php

require_once DIR_PATH.'/app/models/Caes/CaesModel.php';

class CaesController {

    public function __construct(){
        $this->cao = new CaesModel();
    }

    private function incluirEditar(){

        $sexo = $_POST["sexo"];

        if ($sexo == "masculino") {
            $sexoGravado = "M";
        } elseif ($sexo == "feminino") {
            $sexoGravado = "F";
        }

        $this->cao->setNome($_POST['nome']);
        $this->cao->setRaca($_POST['raca']);
        $this->cao->setIdade($_POST['idade']);
        $this->cao->setPeso($_POST["peso"]); 
        $this->cao->setNomePai($_POST["nomePai"]); 
        $this->cao->setNomeMae($_POST["nomeMae"]); 
        $this->cao->setFoto($_POST["foto"]); 
        $this->cao->setDataCadastro(date("Y-m-d")); // Define a data atual como a data de cadastro
        $this->cao->setSexo($sexoGravado);  
        $result = $this->cao->CaoExiste();

        if($result >= 1){
            $this->editar();
        }
        else
        {
            $this->incluir();
        }

        header('Location:'.URL_BASE.'app/views/Caes/CaesView.php');
    }

    private function incluir(){    

        $result = $this->cao->incluir();

        if ($result){
            $_SESSION["MsgSucessoCao"] = "Cão cadastrado com sucesso";
        }
    }

    private function editar(){ 
        $result = $this->cao->editar();
        
        if ($result){
            $_SESSION["MsgSucessoCao"] = "Cão alterado com sucesso";
        }
    }

    public function consultar() {
        // Chama a função "consultar" do modelo de cães
        $resultado = $this->cao->consultar();
        // Retorna o resultado como um array de objetos
        return $resultado;
    }

    public function ConsultarCao() {
        // Chama a função "consultar" do modelo de caos
        $resultado = $this->cao->ConsultarCao();

        if ($resultado) {
            $this->cao->setId($resultado['ID']);
            $this->cao->setNome($resultado['NOME']);
            $this->cao->setRaca($resultado['RACA']);
            $this->cao->setIdade($resultado['EMAIL']);
            $this->cao->setPeso($resultado['PESO']);
            $this->cao->setNomePai($resultado['NOME_PAI']);
            $this->cao->setNomeMae($resultado['NOME_MAE']);
            $this->cao->setDataCadastro($resultado['DATA_CADASTRO']);            
            $this->cao->setSexo($resultado['SEXO']);            
        }
         // Retorna o objeto usuário com as informações do usuário atualmente logado
        return $this->cao;
    }    

    public function processRequest($actionName) {
        // Chama a ação correspondente e exibe o resultado
        switch ($actionName) {
            case "salvarCao":
                $this->incluirEditar();
                break;
            case "consultarCaes":
                return $this->consultar();
                break;
            case "consultarCao":
                return $this->ConsultarCao();
                break;                
            default:
            http_response_code(404);
            echo "Página não encontrada.";
        }
    }
}

?>
