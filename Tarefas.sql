-- Tabela de Categorias (uma categoria pode ter várias tarefas)
CREATE TABLE categoria (
    idcategoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(30) NOT NULL
);

-- Tabela de Usuários (um usuário pode ter várias tarefas)
CREATE TABLE usuario (
    idusuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(90) NOT NULL,
    email VARCHAR(30) NOT NULL UNIQUE -- Garantindo que o email seja único
);

-- Tabela de Tarefas (uma tarefa pertence a um usuário e a uma categoria)
CREATE TABLE tarefa (
    idtitulo INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(30) NOT NULL,
    descricao VARCHAR(120),
    data_criacao DATE NOT NULL,
    idcategoria INT,  -- Relacionamento com a categoria
    idusuario INT,    -- Relacionamento com o usuário
    FOREIGN KEY (idcategoria) REFERENCES categoria(idcategoria),
    FOREIGN KEY (idusuario) REFERENCES usuario(idusuario)
);

