<?php
header("Content-Type: text/html; charset=utf-8", true);
?>
<html>
<head><title>Pacientes</title></head>
<body>
<center><h3>Gerenciamento de Pacientes do Laboratório de Exames</h3></center>
<form name="form1" method="POST" action="form_incluir.php">
<table border="0" align="center" width="60%">
<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "SELECT * FROM Paciente ORDER BY Nome";
$tabela = mysqli_query($con, $sql);

if (mysqli_num_rows($tabela) == 0) {
?>
  <tr><td align="center">Não há nenhum paciente cadastrado.</td></tr>
  <tr><td align="center"><input type="submit" value="Incluir Paciente"></td></tr>
<?php
} else {
  ?>
    <tr bgcolor="grey">
      <td width="12%">CPF</td>
      <td width="12%">Nome</td>
      <td width="12%">Logradouro</td>
      <td width="12%">Bairro</td>
      <td width="12%">Cidade</td>
      <td width="12%">Estado</td>
      <td width="12%">CEP</td>
      <td width="12%">Numero</td>
      <td width="16%"></td>
    </tr>
  <?php
  while($dados = mysqli_fetch_row($tabela)){
  ?>
  <tr>
    <td><?php echo $dados[0]; // CPF ?></td>
    <td><?php echo $dados[1]; // Nome ?></td>
    <td><?php echo $dados[2]; // Logradouro ?></td>
    <td><?php echo $dados[3]; // Bairro ?></td>
    <td><?php echo $dados[4]; // Cidade ?></td>
    <td><?php echo $dados[5]; // Estado ?></td>
    <td><?php echo $dados[6]; // CEP ?></td>
    <td><?php echo $dados[7]; // Numero ?></td>
    <td align="center">
      <input type="button" value="Excluir" onclick="location.href='excluir.php?CPF=<?php echo $dados[0]; ?>'">
      <input type="button" value="Editar" onclick="location.href='form_incluir.php?CPF=<?php echo $dados[0]; ?>'">
    </td>
  </tr>
  <?php
  }
  ?>
<tr bgcolor="grey"><td colspan="30" height="5"></td></tr>
<tr><td colspan="9" align="center"><input type="submit" value="Incluir Novo Paciente"></td></tr>
<?php
}
mysqli_close($con);
?>
</table>
</form>
</body>
</html>
