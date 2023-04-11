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
    <title>Cadastro de usuário</title>
    <body>  
        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=cadastrarUsuario';?>">
            <div class="container-cadastro"> 
                 <h1 class="h3 mb-3 font-weight-normal"><b>Dados</b></h1>
            <div class="row"> 
                <div class="col-md-4">
                    <label for="login">Login</label>
                    <input id="login" name="login" class="form-control" type="text" placeholder="Login..." required>
                </div>
                <div class="col-md-4">
                    <label for="senha">Senha</label>
                    <input id="senha" name="senha" class="form-control" type="password" placeholder="Senha..." required>
                </div>
                <div class="col-md-5">
                    <label for="email">E-mail</label>
                    <input id="email" name="email" class="form-control" type="email" placeholder="E-mail..." required>
                </div>
            </div>
            <button class="btn btn-primary btn-lg mx-auto d-block" style="width: 150px;" type="submit" name="submit">Cadastrar</button>
        </div>
        </form>
    </body>
</html>