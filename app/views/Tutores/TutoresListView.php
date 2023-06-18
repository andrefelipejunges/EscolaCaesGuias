<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/Routes.php';
}

// Cria uma instância do controlador de Tutores
require_once DIR_PATH.'/app/controllers/Tutores/TutoresController.php';
$tutoresController = new TutoresController();

if (isset($_GET['idExcluirTutor'])) {
    // Obtém o ID do tutor a ser excluído
    $idUsuario = $_GET['idExcluirTutor'];

    // Processa a exclusão do tutor
    $tutoresController->processRequest("ExcluirTutor");
}

// Recupera todos os usuários
$tutores = $tutoresController->processRequest("consultarTutores");

$registrosPorPagina = 10;
// Calcula o número total de páginas
$totalRegistros = count($tutores);
$totalPaginas = ceil($totalRegistros / $registrosPorPagina);

// Verifica se a página atual está definida na URL, caso contrário, define como página 1
if (!isset($_GET['pagina'])) {
    $_GET['pagina'] = 1;
}

// Define o número da página atual e calcula o registro inicial e final
$paginaAtual = $_GET['pagina'];
$registroInicial = ($paginaAtual - 1) * $registrosPorPagina;
$registroFinal = $registroInicial + $registrosPorPagina;
$tutores = array_slice($tutores, $registroInicial, $registrosPorPagina);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Consulta de Tutores</title>
     <style>
        table {
            border-collapse: collapse;
            width: 100%;
            text-align: left;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 30px;
        }

        .pagination a {
            display: inline-block;
            padding: 5px 10px;
            background-color: #f2f2f2;
            color: black;
            border-radius: 5px;
            text-decoration: none;
            margin: 0 5px;
        }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
        }

        .btn {
            display: inline-block;
            padding: 8px 12px;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            margin-right: 5px;
        }

        .btn-danger {
            background-color: #FF4136;
        }
    </style>
</head>
<body>
<div class="container-cadastro">
    <h1 class="h3 mb-3 font-weight-normal"><b>Consulta de Tutores</b></h1>
    <table>
        <tr>
            <th style="background-color: #2F4F4F; color: white;">Nome</th>
            <th style="background-color: #2F4F4F; color: white;">CPF</th>
            <th style="background-color: #2F4F4F; color: white;">Data Nascimento</th>
            <th style="background-color: #2F4F4F; color: white;">Ações</th> <!-- Coluna para as ações -->
        </tr>
        <?php foreach ($tutores as $tutor): ?>
            <tr>
                <td><?php echo $tutor['NOME'] ?></td>
                <td><?php echo substr($tutor['CPF'], 0, 3) . '.' . substr($tutor['CPF'], 3, 3) . '.' . substr($tutor['CPF'], 6, 3) . '-' . substr($tutor['CPF'], 9) ?></td>
                <td><?php echo date('d/m/Y', strtotime($tutor['DATA_NASCIMENTO'])) ?></td>
                <td>
                    <div class="btn-container">
                        <a class="btn btn-edit" href="TutoresView.php?idTutor=<?php echo $tutor['ID'] ?>">Alterar</a>
                        <a class="btn btn-danger" href="?idExcluirTutor=<?php echo $tutor['ID'] ?>">Excluir</a>
                    </div>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>

    <div class="pagination">
        <?php if ($paginaAtual > 1): ?>
            <a href="?pagina=<?php echo $paginaAtual - 1; ?>">Anterior</a>
        <?php endif; ?>
        <?php for ($i = 1; $i <= $totalPaginas; $i++): ?>
            <?php if ($i == $paginaAtual): ?>
                <a href="?pagina=<?php echo $i; ?>" class="active"><?php echo $i; ?></a>
            <?php else: ?>
                <a href="?pagina=<?php echo $i; ?>"><?php echo $i; ?></a>
            <?php endif; ?>
        <?php endfor; ?>
        <?php if ($paginaAtual < $totalPaginas): ?>
            <a href="?pagina=<?php echo $paginaAtual + 1; ?>">Próxima</a>
        <?php endif; ?>
    </div>

</div>
</body>
</html>
