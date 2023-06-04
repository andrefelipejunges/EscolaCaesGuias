<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/Routes.php';
}

// Cria uma instância do controlador de Tutores
require_once DIR_PATH.'/app/controllers/Usuarios/UsuariosController.php';
$usuariosController = new UsuariosController();

// Recupera o usuario
$usuario = $usuariosController->processRequest("ConsultarUsuario");
//$paginaAtual = $_GET['pagina']
//die(var_dump($_SESSION["id_usuario_logado"]));
//die(var_dump($_GET['idUsuario']));

// Verifica se o objeto $usuario não é nulo
if ($usuario != null) {
    // Define as variáveis para preencher os campos da tela
    $id = $usuario->getId();
    $login = $usuario->getLogin();
    $senha = $usuario->getSenha();
    $email = $usuario->getEmail();

} else {
    // Define as variáveis como vazias caso o objeto $usuario seja nulo
    $id = "";
    $nome = "";
    $senha = "";
    $email = "";
} 

?>

<!DOCTYPE html>
<html>
<head>
    <title>Dados do Usuário</title>
    <body>  
        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=SalvarUsuario?';?>" >
            <div class="container-cadastro"> 
                 <h1 class="h3 mb-3 font-weight-normal"><b>Dados do Usuário</b></h1>
                 <br>
            <div class="row">
                <div class="col-md-4">
                   <b> <label for="login">Login:</label></b>
                    <input id="login" name="login" class="form-control" type="text" placeholder="Login..." value="<?php echo $login; ?>" required readonly>
                </div>
                <div class="col-md-4">
                   <b> <label for="senha">Senha:</label> </b>
                    <input id="senha" name="senha" class="form-control" type="password" placeholder="Senha..." value="<?php echo $senha; ?>" required>
                </div>
                <div class="col-md-5">
                    <b><label for="email">E-mail</label></b>
                    <input id="email" name="email" class="form-control" type="email" placeholder="E-mail..." value="<?php echo $email; ?>" required>
                </div>
                <div class="col-md-4">
                    <input id="id" name="id" class="form-control" type="hidden" placeholder="ID..." value="<?php echo $id; ?>" required readonly>
                </div>                
            </div>
            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit" >Salvar</button>

           <?php if (isset($_SESSION["MsgSucessoUsuario"])) { ?>
            <div class="alert alert-success" role="alert"><?php echo $_SESSION["MsgSucessoUsuario"]; ?></div>
            <?php } ?>

            <?php if (isset($_SESSION["MsgLoginJaCadastrado"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgLoginJaCadastrado"]; ?></div>
            <?php } ?>

             <?php if (isset($_SESSION["MsgEmailJaCadastrado"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgEmailJaCadastrado"]; ?></div>
            <?php } ?>

            <?php if (isset($_SESSION["MsgErroUsuario"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgErroUsuario"]; ?></div>
            <?php } ?>

            <?php unset($_SESSION['MsgSucessoUsuario']); ?>
            <?php unset($_SESSION['MsgLoginJaCadastrado']); ?>
            <?php unset($_SESSION['MsgEmailJaCadastrado']); ?>
            <?php unset($_SESSION['MsgErroUsuario']); ?>


        </div>
        </form>
    </body>
</html>