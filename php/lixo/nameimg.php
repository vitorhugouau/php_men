<?php
include_once('adm_session.php');
?>
<?php
include('banco.php');

if(isset($_POST['edit']) && isset($_POST['nome'])) {
    // recupera os dados enviados pelo formulário
    $edit = $_POST['edit'];
    $nome = $_POST['nome'];
    
    // código SQL para atualizar o registro 
    $sql = "UPDATE imagens SET nome='$nome', imagem=imagem WHERE id=$edit";

    if ($conexao->query($sql) === TRUE) {
        header('Location: consult.php'); 
    } else {
        echo "Erro ao atualizar registro: " . $conexao->error;
    }
    $conexao->close();
} else {
    echo "Dados incompletos.";
}
?>