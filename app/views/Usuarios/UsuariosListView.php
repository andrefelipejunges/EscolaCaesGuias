<?php
include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

// Cria uma instância do controlador de usuários
require_once DIR_PATH.'/app/controllers/Usuarios/UsuariosController.php';
$usuariosController = new UsuariosController();

// Recupera todos os usuários
$usuarios = $usuariosController->processRequest("consultarUsuario");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Cadastro de usuário</title>
    <body>  
        <form>
            <div class="container-cadastro"> 
                <h1 class="h3 mb-3 font-weight-normal"><b>Dados</b></h1>
                <br>
                <table>
                  <tr>
                    <th>ID</th>
                    <th>Login</th>
                    <th>E-mail</th>
                  </tr>
                  
                  <?php foreach ($usuarios as $usuario): ?>
                    <tr>
                        <td><?php echo $usuario['ID'] ?></td>
                        <td><?php echo $usuario['LOGIN'] ?></td>
                        <td><?php echo $usuario['EMAIL'] ?></td>
                    </tr>
                  <?php endforeach; ?>
                </table>
            </div>
        </form>
    </body>
</html>