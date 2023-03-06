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

    <script>
        // Selecione todos os elementos <a> dentro de um <li> em nav
        var navLinks = document.querySelectorAll("nav ul li a");

        // Loop através dos elementos e adicione um ouvinte de evento click
        for (var i = 0; i < navLinks.length; i++) {
          navLinks[i].addEventListener("click", function() {
            // Remova a classe "selected" de todos os elementos <a> em nav
            for (var j = 0; j < navLinks.length; j++) {
              navLinks[j].classList.remove("active");
            }
            // Adicione a classe "selected" ao elemento <a> clicado
            this.classList.add("active");
          });
        }

</script>




    <nav class="navbar fixed-top navbar-light bg-light" style ="background-color:#F8F8FF;">
        <a class="navbar-brand" href="#"><img src="../imagens/Logo_Escola_Caes_Guias_Keller.png" class ="logo"> </a>
    </nav>
  </header>
  
    <form method="post" action="Menu.php">
      <div class="Container-Menu-principal">

      <nav>
        <ul class="menu">
          <li><a href=menu.php?page=Home class="active">Home</a></li>
          <li><a href=menu.php?page=Login>Login</a></li>
          <li><a href=menu.php?page=Eventos>Eventos</a></li>

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