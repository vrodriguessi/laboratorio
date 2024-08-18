<?php
header("Content-Type: text/html; charset=utf-8", true);
?>
<html>
<head><title>Incluir/Editar Paciente</title></head>
<body>
<form name="form1" method="POST" action="incluir.php">
<?php
if(isset($_GET["CPF"])){	
  include("./config.php");
  $con = mysqli_connect($host, $login, $senha, $bd);

  if (!$con) {
      die("Falha na conexão: " . mysqli_connect_error());
  }
?>
  <center><h3>Editar Paciente</h3></center>
<?php
  $sql = "SELECT * FROM Paciente WHERE CPF='" . $_GET['CPF'] . "'";
  $result = mysqli_query($con, $sql);
  $vetor = mysqli_fetch_array($result, MYSQLI_ASSOC);
  mysqli_close($con);
?>
  <input type="hidden" name="CPF" value="<?php echo $_GET['CPF']; ?>">
<?php
}else{
?>
  <center><h3>Cadastrar Novo Paciente</h3></center>
<?php
}
?>
<table border="0" align="center" width="35%">
<tr><td width="20%">Nome:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Nome" value="<?php echo @$vetor['Nome']; ?>" maxlength="50" size="31">
	</td>
</tr>
<tr><td>CPF:</td>
    <td colspan="2" width="90%">
      <input type="text" name="CPF" value="<?php echo @$vetor['CPF']; ?>" maxlength="11" size="14" <?php echo isset($_GET["CPF"]) ? 'readonly' : ''; ?>>
    </td>
</tr>
<tr><td>Logradouro:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Logradouro" value="<?php echo @$vetor['Logradouro']; ?>" maxlength="40" size="31">
	</td>
</tr>
<tr><td>Bairro:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Bairro" value="<?php echo @$vetor['Bairro']; ?>" maxlength="30" size="31">
	</td>
</tr>
<tr><td>Cidade:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Cidade" value="<?php echo @$vetor['Cidade']; ?>" maxlength="30" size="31">
	</td>
</tr>
<tr><td>Estado:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Estado" value="<?php echo @$vetor['Estado']; ?>" maxlength="30" size="31">
	</td>
</tr>
<tr><td>CEP:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="CEP" value="<?php echo @$vetor['CEP']; ?>" maxlength="8" size="9">
	</td>
</tr>
<tr><td>Numero:</td>
    <td colspan="2" width="90%">
	  <input type="text" name="Numero" value="<?php echo @$vetor['Numero']; ?>" maxlength="4" size="9">
	</td>
</tr>
<tr><td colspan="3" align="center">
      <input type="button" value="Cancelar" onclick="location.href='index.php'">
      <input type="submit" value="Gravar">
    </td>
</tr>
</table>
</form>
</body>
</html>
