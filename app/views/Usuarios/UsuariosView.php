<?php

include_once "../../../config.php";
include DIR_PATH.'app/views/Esqueleto/esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/routes.php';
}

?>

<!DOCTYPE html>
<html>
<head>
    <title>Dados</title>
    <body>  

        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=cadastrarUsuario';?>">
            <div class="container-cadastro"> 
                <h1 class="h3 mb-3 font-weight-normal"><b>Dados</b></h1>
                <div class="col">
                    <label>Login</label>
                    <input name="login" class="form-control" type="text" placeholder="Login..." 
                    required>
                </div>
                <div class="col">
                    <label>Senha</label>
                    <input name="senha" class="form-control" type="text" placeholder="Senha..." 
                    required>
                </div>
                <div class="col">
                    <label>E-mail</label>
                    <input name="email" class="form-control" type="text" placeholder="E-mail..." 
                    required>
                </div>

                <!-- login 
                <label for="login" class="sr-only"></label>
                <input type="text" name="login" class="form-control" value="" placeholder="Login" required>
                
                <label for="senha" class="sr-only">Senha</label>
                <input type="password" id="senha" name="senha" class="form-control" placeholder="Senha" required>

                <a href="http://localhost/EscolaCaesGuias/app/views/EsqueciSenha/EsqueciSenhaView.php"> Esqueci minha senha</a>
                -->
                <button class="btn btn-lg btn-primary btn-block" type="submit"  name="submit">Cadastrar</button>

            </div>
        </form>
    </body>
    </html>
