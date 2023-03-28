<?php

class Conexao {
    private $conn;
    
    function __construct() {
        $this->conn = null;
    }
    
    public function conectar() {
        if (!defined('DB_SERVER')) {
            define('DB_SERVER', 'localhost');
        }

        if (!defined('DB_USERNAME')) {
            define('DB_USERNAME', 'root');
        }

        if (!defined('DB_PASSWORD')) {
            define('DB_PASSWORD', '');
        }

        if (!defined('DB_NAME')) {
            define('DB_NAME', 'caes');
        }

        try {
            $this->conn = new PDO("mysql:host=" . DB_SERVER . ";dbname=" . DB_NAME, DB_USERNAME, DB_PASSWORD);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $e) {
            die("Ocorreu um erro ao fazer a conexão com a base de dados: " . $e->getMessage());
        }

        return $this->conn;
    }
    
    public function desconectar() {
        $this->conn = null;
    }
}
?>