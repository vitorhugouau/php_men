<?php
include_once('adm_session.php');
?>


<?php
    //--------------------------adicionar dados ------------------------------------------------------------------------------------

    include('banco.php');
    
    if(isset($_POST['submit'])){
        $nome = $_POST['nome'];
        $sobrenome = $_POST['sobrenome'];
        $cidade = $_POST['cidade'];
        $estado = $_POST['estado'];

        $result = mysqli_query($conexao, "INSERT INTO teste (nome, sobrenome, cidade, estado) VALUES ('$nome', '$sobrenome', '$cidade', '$estado')");
        if (!$result) {
            echo "Erro na consulta: " . mysqli_error($conexao);
        } else {
            // redirecionar para inserindo.php após o envio bem-sucedido do formulário
            header('Location: inserindo.php');
            function inserido(){
                echo "DADOS INSERIDOS COM SUCESSO";
            }
        }
    }
    //--------------------------deletar dados ------------------------------------------------------------------------------------
    if(isset($_POST['delete_id'])) { // verifica se o formulário de exclusão foi submetido
        // verifica se recebeu o id
        $id = $_POST['delete_id'];
        // deleta o registro com base no ID
        $sql_delete = "DELETE FROM teste WHERE id = $id";
        // executa a query 
        if ($conexao->query($sql_delete) === TRUE) {
            function sucesso(){
                echo "<h1>REGISTRO DELETADO COM SUCESSO.</h1>";
            }
        } else {
            echo "Erro ao deletar registro: " . $conexao->error;
        }
    }
    $sql = "SELECT * FROM teste";
    // executa a query
    $resultado = $conexao->query($sql);

?>
 <!------------------------------------------------------------------------------------>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inserindo</title>
    <link rel="stylesheet" href="/css/table.css">
</head>
<body background="/imgnovas/ti.jpg">
<!---------------------------------------BOTAO PARA VOLTAR------------------------------------------------------->
    <nav>
        <ul class= "menu">
            <li><a href="biblioteca.php">BIBLIOTECA</a></li>
            <li><a href="album.php">ÁLBUM</a></li>
            <li><a href="control.php">VOLTAR</a></li>
        </ul>
    </nav>
<!-------------------------------------PHP-------------------------------------------------------------->
        <?php
            if(isset($_POST['submit'])){ //se o botao de submit for clicado 
                inserido();
            }
            if(isset($_POST['delete_id'])) { //se o botao de delete for clicado 
                sucesso();
             }
            ?>
<!--------------------------------------ADICIONANDO DADOS NA TABELA----------------------------------------------------------------------->
                                                 <br>      
        <div class="cont">
            <form method="POST">
                <div class="area">
                    <label for="nome">NOME</label>
                    <input type="text" name="nome" id="nome" required>
                </div>
                <div class="area">
                    <label for="sobrenome">SOBRENOME</label>
                    <input type="text" name="sobrenome" id="sobrenome" required>
                </div>
                <div class="area">
                    <label for="cidade">CIDADE</label>
                    <input type="text" name="cidade" id="cidade" required>
                </div>
                <div class="area">
                    <label for="estado">ESTADO</label>
                    <input type="text" name="estado" id="estado" required>
                </div>
                <div>
                <input type="submit" class="submit" name="submit" id="submit" required>
                </div> 
            </form>
        </div>
    <!-------------------------------TABELA COM OS DADOS----------------------------------------------------->
                                            <br>
                                            <br>
                                            <br>
                                            <br>
                                            <br>
    <table class = "table">
        <thead>
            <th>ID</th>
            <th>NOME</th>
            <th>SOBRENOME</th>
            <th>CIDADE</th>
            <th>ESTADO</th>
            <th>OPÇÕES</th>
        </thead>
        <tbody>
        <?php
            // loop para exibir os resultados
            while ($dados = $resultado->fetch_assoc()) {
                echo "<tr>
                        <td>" . $dados["id"] ."</td>
                        <td>" . $dados["nome"] ."</td>
                        <td>". $dados["sobrenome"]."</td>
                        <td>". $dados["cidade"]."</td>
                        <td>". $dados["estado"]."</td>
                        <td>  
                            <form method='POST'>
                            <div class='button-container'>
                                <input type='hidden' name='delete_id' value='". $dados["id"] ."'> 
                                <button type='submit' onclick='return confirmarExclusao()' class='btn btn-danger'>EXCLUIR</button>
                                </div>
                            </form>
                            <form method='POST' action='alterando.php'>
                                <input type='hidden' name='edit' value='". $dados["id"] ."'>
                                <button type='submit' class='btn btn-success'>EDITAR</button>
                            </form>
                        </td>
                    <tr>";
                }
            ?>
        </tbody>
    </table>
<!-----------------------------MENSAGEM PARA CONFIRMAÇÃO DE EXCLUSÃO------------------------------------------------------->
    <script>
        // confirmação de exclusão
        function confirmarExclusao() {
            return confirm("EXCLUIR ESTE REGISTRO?");
        }
    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp
    4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
