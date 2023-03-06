<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="../css/style.css">
</head>

<body>
  <header>
    <nav class="navbar fixed-top navbar-light bg-light" style ="background-color:#F8F8FF;">
        <a class="navbar-brand" href="#"><img src="../imagens/Logo_Escola_Caes_Guias_Keller.png" class ="logo"> </a>
    </nav>
  </header>
  
    <form method="post" action="index.php">
      <div class="Container-Menu-principal">

      <nav>
        <ul class="menu">
          <li><a href=index.php class="active">Home</a></li>
          <li><a href=login.php>Login</a></li>
          <li><a href=eventos.php>Eventos</a></li>

          <li class="dropdown">
            <a href="#" class="dropdown-btn">Cadastros</a>
            <!-- Cria o conteúdo do dropdown -->
            <div class="dropdown-content">
              <a href=menu.php?page=Tutores>Tutores</a>
              <a href=menu.php?page=Caes>Cães</a>
              <a href=menu.php?page=Usuarios>Usuários</a>
              <a href=menu.php?page=Terceiros>Terceiros</a>
              <a href=menu.php?page=GrupoUsuarios>Grupo de usuários</a>
            </div>
          </li>
      </ul>

    </div>
  </form>

</body>
</html>