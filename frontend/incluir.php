<?php
include("./config.php");
$con = mysqli_connect($host, $login, $senha, $bd);

if (!$con) {
    die("Falha na conexão: " . mysqli_connect_error());
}

if(isset($_POST["CPF"])){
    $sql = "SELECT CPF FROM Paciente WHERE CPF='".$_POST["CPF"]."'";
    $result = mysqli_query($con, $sql);

    if(mysqli_num_rows($result)!=0){
        $sql = "UPDATE Paciente SET 
                Nome='".$_POST["Nome"]."',
                Logradouro='".$_POST["Logradouro"]."',
                Bairro='".$_POST["Bairro"]."',
                Cidade='".$_POST["Cidade"]."',
                Estado='".$_POST["Estado"]."',
                CEP='".$_POST["CEP"]."',
                Numero=".$_POST["Numero"]."
                WHERE CPF='".$_POST["CPF"]."'";
    } else {
        $sql = "INSERT INTO Paciente (CPF, Nome, Logradouro, Bairro, Cidade, Estado, CEP, Numero) 
                VALUES (
                  '".$_POST["CPF"]."',
                  '".$_POST["Nome"]."',
                  '".$_POST["Logradouro"]."',
                  '".$_POST["Bairro"]."',
                  '".$_POST["Cidade"]."',
                  '".$_POST["Estado"]."',
                  '".$_POST["CEP"]."',
                  ".$_POST["Numero"]."
                )";
    }

    if (mysqli_query($con, $sql)) {
        echo "Registro atualizado/inserido com sucesso";
    } else {
        echo "Erro: " . $sql . "<br>" . mysqli_error($con);
    }
}

mysqli_close($con);
header("location: ./index.php");
?>
