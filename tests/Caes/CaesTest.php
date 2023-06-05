<?php

require_once DIR_PATH.'/app/controller/Caes/CaesController.php';

class CaesControllerTest extends PHPUnit\Framework\TestCase {

    public function testIncluirEditar() {
        // Mock do objeto CaesModel
        $caesModelMock = $this->getMockBuilder('CaesModel')
            ->getMock();

        // Configurar o comportamento esperado do método CaoExiste() no mock
        $caesModelMock->expects($this->once())
            ->method('CaoExiste')
            ->willReturn(0);

        // Criar uma instância do CaesController usando o mock
        $caesController = new CaesController();
        $caesController->cao = $caesModelMock;

        // Definir os dados de entrada para o método incluirEditar()
        $_POST["sexo"] = "masculino";
        $_POST["nome"] = "Nome do Cão";
        $_POST["raca"] = "Raça do Cão";
        $_POST["idade"] = 3;
        $_POST["peso"] = 10.5;
        $_POST["nomePai"] = "Pai do Cão";
        $_POST["nomeMae"] = "Mãe do Cão";
        $_POST["foto"] = "foto.png";

        // Chamar o método incluirEditar()
        $caesController->incluirEditar();

        // Verificar se o método editar() foi chamado corretamente
        $this->assertEquals($_POST["nome"], $caesModelMock->getNome());
        $this->assertEquals($_POST["raca"], $caesModelMock->getRaca());
        $this->assertEquals($_POST["idade"], $caesModelMock->getIdade());
        $this->assertEquals($_POST["peso"], $caesModelMock->getPeso());
        $this->assertEquals($_POST["nomePai"], $caesModelMock->getNomePai());
        $this->assertEquals($_POST["nomeMae"], $caesModelMock->getNomeMae());
        $this->assertEquals($_POST["foto"], $caesModelMock->getFoto());
        $this->assertEquals("M", $caesModelMock->getSexo());

        // Verificar se o método incluir() não foi chamado
        $this->assertNull($_SESSION["MsgSucessoCao"]);
    }
}