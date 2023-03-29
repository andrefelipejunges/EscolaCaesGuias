<?php

include_once "../../../config.php";

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
    <nav class="navbar fixed-top navbar-light bg-light" style ="background-color:#F8F8FF;">
        <a class="navbar-brand" href="index.php"><img src="<?php echo URL_BASE.'assets/img/Logo_Escola_Caes_Guias_Keller.png';?>" class ="logo"> </a>
    </nav>
  </header>
  
    <form method="post">
      <div class="Container-Menu-principal">

      <nav>
        <ul class="menu">
          <li><a href ="<?php echo URL_BASE.'app/views/Esqueleto/index.php';?>"> Home</a></li>
          <li><a href ="<?php echo URL_BASE.'app/views/Login/LoginView.php';?>"> Login</a></li>
        
          <li class="dropdown">
            <a href="#" class="dropdown-btn">Cadastros</a>
            <!-- Cria o conteúdo do dropdown -->
            <div class="dropdown-content">
              <a href="<?php echo URL_BASE.'app/views/Tutores/Tutores.php';?>">Tutores</a>
              <a href="<?php echo URL_BASE.'app/views/Caes/Caes.php';?>">Cães</a>
              <a href="<?php echo URL_BASE.'app/views/Usuarios/Usuarios.php';?>">Usuários</a>
              <a href="<?php echo URL_BASE.'app/views/Terceiros/Terceiros.php';?>">Terceiros</a>
              <a href="<?php echo URL_BASE.'app/views/GrupoUsuarios/GrupoUsuarios.php';?>">Grupo de usuários</a>
            </div>
          </li>

          <li><a href ="<?php echo URL_BASE.'app/views/Eventos/Eventos.php';?>"> Eventos</a></li>

          <li class="dropdown">
            <a href="#" class="dropdown-btn">Consulta</a>
            <!-- Cria o conteúdo do dropdown -->
            <div class="dropdown-content">
              <a href="<?php echo URL_BASE.'app/views/Tutores/Tutores.php';?>">Tutores</a>
              <a href="<?php echo URL_BASE.'app/views/Caes/Caes.php';?>">Cães</a>
              <a href="<?php echo URL_BASE.'app/views/Usuarios/Usuarios.php';?>">Usuários</a>
            </div>
          </li>
      </ul>
    </div>
  </form>
</body>
</html>