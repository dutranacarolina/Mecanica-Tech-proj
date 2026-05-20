<%@ page import="java.sql.*" %>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    
    String urlBanco = "jdbc:sqlite:C:/Users/anacr/OneDrive/Área de Trabalho/MecanicaTech_Login/Incremento_4_Validacao_Completa/banco.sqlite";
    
    try {
        Class.forName("org.sqlite.JDBC");
        Connection conexao = DriverManager.getConnection(urlBanco);
        
        String sql = "SELECT * FROM Usuario WHERE Email=? AND Senha=?";
        PreparedStatement stmt = conexao.prepareStatement(sql);
        stmt.setString(1, email);
        stmt.setString(2, senha);
        
        ResultSet resultado = stmt.executeQuery();
        
        if(resultado.next()) {
            out.println("<h2>Login realizado com sucesso!</h2>");
        } else {
            out.println("<h2>Email ou senha incorretos!</h2>");
        }
        
        conexao.close();
    } catch(Exception e) {
        out.println("<p style='color:red;'>Erro: " + e.getMessage() + "</p>");
    }
%>