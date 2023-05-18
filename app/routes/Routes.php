<?php

include_once "../../Config.php";
require_once DIR_PATH.'app/controllers/Login/LoginController.php';
require_once DIR_PATH.'app/controllers/EsqueciSenha/EsqueciSenhaController.php';
require_once DIR_PATH.'app/controllers/Usuarios/UsuariosController.php';
require_once DIR_PATH.'app/controllers/Tutores/TutoresController.php';

// Define as rotas para cada ação do controlador de Login
$routes = [
    "action=autenticar" => [
        "controller" => "LoginController",
        "action" => "autenticar"
    ],
    "action=logout" => [
        "controller" => "LoginController",
        "action" => "logout"
    ],
    "action=enviarEmail" => [
        "controller" => "EsqueciSenhaController",
        "action" => "enviarEmail"
    ],
    "action=SalvarUsuario" => [
        "controller" => "UsuariosController",
        "action" => "salvarUsuario"
    ],
    "action=consultarUsuario" => [
        "controller" => "UsuariosController",
        "action" => "consultar"
    ],
    "action=salvarTutor" => [
        "controller" => "TutoresController",
        "action" => "salvarTutor"
    ],
    "action=consultarTutor" => [
        "controller" => "TutoresController",
        "action" => "consultar"
    ]
];

// Pega a rota atual da URL
$route = $_SERVER["REQUEST_URI"];
$routeParts = explode("?", $route);
$route = $routeParts[1];

// Se a rota existir nas rotas definidas, processa a requisição
if (array_key_exists($route, $routes)) {
    $controllerName = $routes[$route]["controller"];
    $actionName = $routes[$route]["action"];
    $controller = new $controllerName();
    $controller->processRequest($actionName);

} else {
    // Caso contrário, exibe uma página de erro 404
    http_response_code(404);
    echo "Página não encontrada.";
}
