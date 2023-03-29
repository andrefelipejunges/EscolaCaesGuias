<?php

require_once DIR_PATH.'/core/conexao.php';

class EsqueciSenhaModel {
    public function existeUsuarioPorLogin($login) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT COUNT(*) FROM usuarios WHERE login = ?");
        $stmt->execute([$login]);

        $totalUsuarios = $stmt->fetchColumn();

        return $totalUsuarios > 0;
    }

    public function atualizarSenhaPorLogin($login, $novaSenha) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("UPDATE usuarios SET senha = ? WHERE login = ?");
        $stmt->execute([$novaSenha, $login]);
    }
}
