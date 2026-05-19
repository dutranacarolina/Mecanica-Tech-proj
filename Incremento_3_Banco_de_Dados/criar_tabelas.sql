-- Criar Tabela Perfil
-- Guarda os tipo de usuarios: admin, mecan, rh
CREATE TABLE Perfil ( 
    ID_Perfil INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Perfil VARCHAR(30) NOT NULL
);

-- Criar Tabela Usuario
-- Guarda os dados de que, faz o login: emial, cpf, senha
CREATE TABLE Usuario (
    ID_Usuario INTEGER PRIMARY KEY AUTOINCREMENT,
    Email VARCHAR(100) UNIQUE NOT NULL,
    CPF VARCHAR(11) UNIQUE,
    Senha VARCHAR(255) NOT NULL
);

-- Criar Tabela Loga (Relacionamento)
-- Conecta um usuário ao seu perfil
CREATE TABLE Loga (
    fk_Usuario_ID_Usuario INTEGER,
    fk_Perfil_ID_Perfil INTEGER,
    PRIMARY KEY (fk_Usuario_ID_Usuario, fk_Perfil_ID_Perfil),
    FOREIGN KEY (fk_Usuario_ID_Usuario) REFERENCES Usuario (ID_Usuario) ON DELETE CASCADE,
    FOREIGN KEY (fk_Perfil_ID_Perfil) REFERENCES Perfil (ID_Perfil) ON DELETE SET NULL
);

-- Inserir Dados de Teste
INSERT INTO Perfil (Nome_Perfil) VALUES ('Admin'), ('Mecânico'), ('RH');
INSERT INTO Usuario (Email, CPF, Senha) VALUES ('admin@mecanicatech.com', '12345678901', '123');
INSERT INTO Loga (fk_Usuario_ID_Usuario, fk_Perfil_ID_Perfil) VALUES (1, 1);