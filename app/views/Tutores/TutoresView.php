<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/Routes.php';
}

// Cria uma instância do controlador de Tutores
require_once DIR_PATH.'/app/controllers/Tutores/TutoresController.php';
$tutoresController = new TutoresController();

// Recupera o tutor logado
if (isset($_GET['idTutor'])) 
    $tutor = $tutoresController->processRequest("consultarTutor");
else
    $tutor = NULL;

// Verifica se o objeto $tutor não é nulo
if ($tutor != null) {
    // Define as variáveis para preencher os campos da tela
    $id = $tutor->getId();
    $nome = $tutor->getNome();
    $cpf = $tutor->getCpf();
    $usuario = $tutor->getUsuario();
    
    if ($tutor->getNascimento() <> NULL)
      $nascimento = date('Y-m-d', strtotime($tutor->getNascimento()));

    if ($cpf <> '')
    {
      //formatar CPF
      $cpf = substr_replace($cpf, ".", 3, 0);
      $cpf = substr_replace($cpf, ".", 7, 0);
      $cpf = substr_replace($cpf, "-", 11, 0);
    }

} else {
    // Define as variáveis como vazias caso o objeto $tutor seja nulo
    $id = "";
    $nome = "";
    $cpf = "";
    $nascimento = "";
    $usuario = "";
} 

?>

<!DOCTYPE html>
<html>
<head>
    <title>Dados do Tutor</title>
    <body>  
        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=salvarTutor';?>">
            <div class="container-cadastro"> 
                 <h1 class="h3 mb-3 font-weight-normal"><b>Dados do Tutor</b></h1>
                 <br>
            <div class="row"> 
                <div class="col-md-5">
                   <b> <label for="login">Nome:</label></b>
                    <input id="nome" name="nome" class="form-control" type="text" placeholder="Nome..." value="<?php echo $nome; ?>" required>
                </div>
                <div class="col-md-3">
                   <b> <label for="senha">CPF:</label> </b>
                    <input id="cpf" name="cpf" class="form-control" type="text" placeholder="CPF..." value="<?php echo $cpf; ?>" required pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" title="Por favor, insira um CPF válido no formato 000.000.000-00" maxlength="14">
                </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <b><label for="nascimento">Data Nascimento:</label></b>
                        <input id="nascimento" name="nascimento" class="form-control" type="date" placeholder="Data nascimento.." value="<?php echo $nascimento; ?>" required>
                    </div>
                </div>
                <div class="col-md-4">
                    <input id="id" name="id" class="form-control" type="hidden" placeholder="ID..." value="<?php echo $id; ?>" required readonly>
                </div>
                <div class="col-md-4">
                    <input id="usuario" name="usuario" class="form-control" type="hidden" placeholder="Usuario..." value="<?php echo $usuario; ?>" required readonly>
                </div>                
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Salvar</button>

           <?php if (isset($_SESSION["MsgSucessoTutor"])) { ?>
            <div class="alert alert-success" role="alert"><?php echo $_SESSION["MsgSucessoTutor"]; ?></div>
            <?php } ?>

            <?php if (isset($_SESSION["MsgErroTutor"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgErroTutor"]; ?></div>
            <?php } ?>

            <?php unset($_SESSION['MsgSucessoTutor']); ?>
            <?php unset($_SESSION['MsgErroTutor']); ?>

        </div>
        </form>
    </body>
</html>