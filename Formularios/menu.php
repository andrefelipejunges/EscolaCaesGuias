<?php

// define um array associativo com as páginas e seus caminhos
$pages = array(
    "Home" => "index.php",
    "Login" => "Login.php",
    "Eventos" => "Eventos.php",
    "Tutores" => "Tutores.php",
    "Caes" => "Caes.php",
    "Usuarios" => "Usuarios.php",
    "Terceiros" => "Terceiros.php",
    "GrupoUsuario" => "GrupoUsuario.php",
    "EsqueciSenha" => "EsqueciSenha.php"
);

// obtém o parâmetro 'page' da URL
$page = $_GET['page'];

// verifica se o valor do parâmetro existe no array de páginas
if (array_key_exists($page, $pages)) {
    // inclui o arquivo correspondente à página
    include($pages[$page]);
} else {
    echo "Página não encontrada";
}

?>