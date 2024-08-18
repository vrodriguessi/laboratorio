<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);
$sql = "DELETE FROM Paciente WHERE CPF='" . $_GET["CPF"] . "'";
mysqli_query($con, $sql);
header("location: ./index.php");
?>
