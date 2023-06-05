<?php

require_once DIR_PATH.'/app/controller/Tutores/TutoresController.php';

class TutoresControllerTest extends PHPUnit\Framework\TestCase
{
    public function testIncluirEditar()
    {
        // Simula a requisição POST
        $_POST['nome'] = 'John Doe';
        $_POST['cpf'] = '123456789';
        $_POST['nascimento'] = '1990-01-01';
        $_SESSION["id_usuario_logado"] = 1;

        // Cria um objeto mock para o modelo TutoresModel
        $tutorModelMock = $this->createMock(TutoresModel::class);
        $tutorModelMock->expects($this->once())
            ->method('TutorExiste')
            ->willReturn(0);
        $tutorModelMock->expects($this->once())
            ->method('incluir')
            ->willReturn(true);

        // Cria uma instância do controlador TutoresController
        $controller = new TutoresController();
        $controller->tutor = $tutorModelMock;

        // Executa o método incluirEditar()
        $controller->incluirEditar();

        // Verifica se a mensagem de sucesso foi definida na sessão
        $this->assertEquals("Tutor cadastrado com sucesso", $_SESSION["MsgSucessoTutor"]);
    }

    public function testConsultarTutorLogado()
    {
        // Cria um objeto mock para o modelo TutoresModel
        $tutorModelMock = $this->createMock(TutoresModel::class);
        $tutorModelMock->expects($this->once())
            ->method('ConsultarTutorLogado')
            ->willReturn([
                'NOME' => 'John Doe',
                'CPF' => '123456789',
                'DATA_NASCIMENTO' => '1990-01-01',
                'USUARIO' => 1
            ]);

        // Cria uma instância do controlador TutoresController
        $controller = new TutoresController();
        $controller->tutor = $tutorModelMock;

        // Executa o método consultarTutorLogado()
        $result = $controller->consultarTutorLogado();

        // Verifica se os atributos do objeto tutor foram definidos corretamente
        $this->assertEquals('John Doe', $result->getNome());
        $this->assertEquals('123456789', $result->getCpf());
        $this->assertEquals('1990-01-01', $result->getNascimento());
        $this->assertEquals(1, $result->getUsuario());
    }
}