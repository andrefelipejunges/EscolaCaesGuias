<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/Routes.php';
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de Tutor</title>
    <body>  
        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=cadastrarTutor';?>">
            <div class="container-cadastro"> 
                 <h1 class="h3 mb-3 font-weight-normal"><b>Dados</b></h1>
                 <br>
            <div class="row"> 
                <div class="col-md-5">
                   <b> <label for="login">Nome:</label></b>
                    <input id="nome" name="nome" class="form-control" type="text" placeholder="Nome..." required>
                </div>
                <div class="col-md-3">
                   <b> <label for="senha">CPF:</label> </b>
                    <input id="cpf" name="cpf" class="form-control" type="text" placeholder="CPF..." required pattern="\d{3}\.\d{3}\.\d{3}-\d{2}" title="Por favor, insira um CPF válido no formato 000.000.000-00" maxlength="14">
                </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <b><label for="nascimento">Data Nascimento:</label></b>
                        <input id="nascimento" name="nascimento" class="form-control" type="date" placeholder="Data nascimento.." required >
                    </div>
                </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Salvar</button>

           <?php if (isset($_SESSION["MsgSucessoTutor"])) { ?>
            <div class="alert alert-success" role="alert"><?php echo $_SESSION["MsgSucessoTutor"]; ?></div>
            <?php } ?>

            <?php if (isset($_SESSION["MsgCpfJaCadastradoTutor"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgCpfJaCadastradoTutor"]; ?></div>
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