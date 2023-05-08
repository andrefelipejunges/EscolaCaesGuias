<?php

require_once DIR_PATH.'/core/Conexao.php';

class EsqueciSenhaModel {

    public function retornarIDUsuario($email) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT id FROM usuarios WHERE email = ?");
        $stmt->execute([$email]);

        $usuario = $stmt->fetch();

        if ($usuario) {
            return $usuario['id'];

        } else {
            return false;
        }
}

public function retornarLoginUsuario($IDUsuario) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("SELECT login FROM usuarios WHERE id = ?");
        $stmt->execute([$IDUsuario]);

        $usuario = $stmt->fetch();

        if ($usuario) {
            return $usuario['login'];
        } else {
            return false;
        }
}

    public function atualizarSenhaPorLogin($IDUsuario, $novaSenha) {
        $conn = new Conexao();
        $conn = $conn->conectar();

        $stmt = $conn->prepare("UPDATE usuarios SET senha = ? WHERE id = ?");
        $stmt->execute([$novaSenha, $IDUsuario]);
    }
}
