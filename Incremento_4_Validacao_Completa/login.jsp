<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mecânica Tech</title>
    <link rel="stylesheet" href="/estilo.css"> <!--rel: arquivo conectado é uma folha de estilo css-->
</head>
<body>
     <div class="container">
        <h2>Login</h2>
        
        <form action="valida_login.jsp" method="post"> <!-- # envia os dados pra página -->
          <label for="email">E-mail/CPF</label><br>
          <input type="text" id="email" name="email"><br><br>
          <label for="password">Senha</label><br>
          <input type="password" id="password" name="senha">

          <div class="opcoes">
            <input type="checkbox" id="lembrar">
            <label for="lembrar">Lembrar-me</label><br>
          </div>

          <button type="submit">Entrar</button>

        </form>
    </div>

</body>
</html>