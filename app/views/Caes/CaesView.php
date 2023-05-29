<?php

include_once "../../../Config.php";
include DIR_PATH.'app/views/Esqueleto/Esqueleto.php';

if(isset($_POST['submit'])) {
    require_once DIR_PATH.'app/routes/Routes.php';
}

?>

<!DOCTYPE html>
<html>
   <head>
      <title>Dados do Cão</title>
   <body>
      <form method="post" action ="<?php echo URL_BASE.'app/routes/routes.php?action=salvarCao';?>">
         <div class="container-cadastro">
         <h1 class="h3 mb-3 font-weight-normal"><b>Dados do Cão</b></h1>
         <br>
         <div class="row">
            <div class="col-md-3">
               <b> <label for="login">Nome:</label></b>
               <input id="nome" name="nome" class="form-control" type="text" placeholder="Nome..." required>
            </div>
            <div class="col-md-3">
               <b> <label for="senha">Raça:</label> </b>
               <input id="raca" name="raca" class="form-control" type="text"  placeholder="Raça..."  required>
            </div>
            <div class="col-md-3">
               <b><label for="nascimento">Idade:</label></b>
               <input id="idade" name="idade" class="form-control" type="text" placeholder="Idade..." required>
            </div>
            <div class="col-md-3">
               <b><label for="nascimento">Peso:</label></b>
               <input id="peso" name="peso" class="form-control" type="text" placeholder="Peso..." required>
            </div>
            <div class="col-md-3">
               <b><label for="nomePai">Nome Pai:</label></b>
               <input id="nomePai" name="nomePai" class="form-control" type="text" placeholder="Nome Pai..." required>
            </div>
            <div class="col-md-3">
               <b><label for="nomeMae">Nome Mãe:</label></b>
               <input id="nomeMae" name="nomeMae" class="form-control" type="text" placeholder="Nome Mãe..." required>
            </div>
            <div class="col-md-3">
                  <b><label for="sexo">Sexo:</label></b>
                  <select id="sexo" name="sexo" class="form-control" required>
                     <option value="masculino">Masculino</option>
                     <option value="feminino">Feminino</option>
                  </select>
               </div>
           <div class="col-md-5">
               <b><label for="foto">Foto:</label></b>
               <input id="foto" name="foto" class="form-control" type="file" accept="image/*" onchange="previewImage(event)" required>
          </div>

            <button class="btn btn-lg btn-primary btn-block" type="submit" name="submit">Salvar</button>

            <?php if (isset($_SESSION["MsgSucessoCao"])) { ?>
            <div class="alert alert-success" role="alert"><?php echo $_SESSION["MsgSucessoCao"]; ?></div>
            <?php } ?>

            <?php if (isset($_SESSION["MsgErroCao"])) { ?>
            <div class="alert alert-danger" role="alert"><?php echo $_SESSION["MsgErroCao"]; ?></div>
            <?php } ?>

            <?php unset($_SESSION['MsgSucessoCao']); ?>
            <?php unset($_SESSION['MsgErroCao']); ?>
         </div>
      </form>
   </body>
</html>