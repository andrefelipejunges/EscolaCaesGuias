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
    <title>Dados</title>
    <body>  

        <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=cadastrar';?>">
            <div class="container-cadastro"> 
                <h1 class="h3 mb-3 font-weight-normal"><b>Dados</b></h1>
                <div class="col">
                    <label>Nome</label>
                    <input name="nome" class="form-control" type="text" placeholder="Nome..." 
                    required>
                </div>
                <div class="col">
                    <label>CPF</label>
                    <input name="cpf" class="form-control" type="text" placeholder="CPF..." 
                    required>
                </div>
                <div class="col">
                    <label>Nascimento (dd/mm/yyyy)</label>
                    <input name="nascimento" class="form-control" type="text" placeholder="Nascimento..." 
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
