<?php

include_once "../../../Config.php";

?>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="<?php echo URL_BASE.'assets/css/style.css';?>">

</head>

<body>
  <header>
    <?php session_start()?>
    <nav class="navbar fixed-top navbar-light bg-light bg-white">
        <a class="navbar-brand" href="<?php echo URL_BASE.'app/views/Esqueleto/index.php';?>"><img src="<?php echo URL_BASE.'assets/img/Logo_Escola_Caes_Guias_Keller.png';?>" class ="logo"> </a>
    
         <?php if(isset($_SESSION["nome_usuario_logado"])) { ?>
            <?php $nomeUsuario = $_SESSION["nome_usuario_logado"] ; ?>      
            <li class="menu-item-user-logged"><?php echo $nomeUsuario; ?></li>
         <?php } ?>
    </nav>
  </header>
  
    <form method="post">
      <div class="Container-Menu-principal">

      <nav>
        <ul class="menu">
          <li><a href ="<?php echo URL_BASE.'app/views/Esqueleto/index.php';?>"> Home</a></li>
          <?php if(!isset($_SESSION["id_usuario_logado"])) { ?>

            <li><a href ="<?php echo URL_BASE.'app/views/Login/LoginView.php';?>"> Login</a></li>
          <?php } else { ?>
             
            <li class="dropdown">
            <a href="#" class="dropdown-btn">Cadastros</a>
            <!-- Cria o conteúdo do dropdown -->
            <div class="dropdown-content">
              <a href="<?php echo URL_BASE.'app/views/Tutores/TutoresView.php';?>">Tutores</a>
              <a href="<?php echo URL_BASE.'app/views/Caes/CaesView.php';?>">Cães</a>
              <a href="<?php echo URL_BASE.'app/views/Usuarios/UsuariosView.php';?>">Usuários</a>
            </div>
          </li>


          <li class="dropdown">
            <a href="#" class="dropdown-btn">Consulta</a>
            <!-- Cria o conteúdo do dropdown -->
            <div class="dropdown-content">
              <a href="<?php echo URL_BASE.'app/views/Tutores/TutoresListView.php';?>">Tutores</a>
              <a href="<?php echo URL_BASE.'app/views/Caes/CaesListView.php';?>">Cães</a>
              <a href="<?php echo URL_BASE.'app/views/Usuarios/UsuariosListView.php';?>">Usuários</a>
            </div>

            <li><a href ="<?php echo URL_BASE.'app/routes/routes.php?action=logout';?>"> Sair</a></li>

          <?php } ?>
        
          </li>
      </ul>
    </nav>
    </div>
  </form>
</body>
</html>
