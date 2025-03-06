CREATE TABLE generos (
	id_genero INT PRIMARY KEY AUTO_INCREMENT,
	genero VARCHAR(100) NOT NULL
);

CREATE TABLE filmes (
	id_filme INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100) NOT NULL,
	ano_lancamento YEAR NOT NULL,
	id_genero INT,
	FOREIGN KEY (id_genero) REFERENCES generos(id_genero)
);

CREATE TABLE avaliacoes (
	id_avaliacao INT PRIMARY KEY AUTO_INCREMENT,
	nota DECIMAL(3,1) NOT NULL,
	comentario VARCHAR(750),
	id_filme INT,
	FOREIGN KEY (id_filme) REFERENCES filmes(id_filme)
);

INSERT INTO generos (id_genero, genero) VALUES
(NULL, 'Ação'),
(NULL, 'Comédia'),
(NULL, 'Drama'),
(NULL, 'Ficção Científica'),
(NULL, 'Terror'),
(NULL, 'Animação');

INSERT INTO filmes (id_filme, titulo, ano_lancamento, id_genero) VALUES
(NULL, 'Vingadores: Ultimato', 2019, 1),
(NULL, 'O Rei Leão', 2019, 6),
(NULL, 'Coringa', 2019, 3),
(NULL, 'IT: A Coisa', 2017, 5),
(NULL, 'De Volta para o Futuro', 1985, 4),
(NULL, 'Deadpool', 2016, 2);

INSERT INTO avaliacoes (id_avaliacao, id_filme, nota, comentario) VALUES
(NULL, 1, 9.5, 'Filme incrível, ótimos efeitos!'),
(NULL, 3, 8.8, 'Atuação impecável do protagonista!'),
(NULL, 4, 7.0, 'Muito assustador, mas meio longo.'),
(NULL, 5, 9.0, 'Clássico! História envolvente.'),
(NULL, 2, 8.5, 'Animação nostálgica e bem feita.'),
(NULL, 6, 9.0, 'Humor ácido e ação na medida certa.');

select f.titulo, f.ano_lancamento, g.genero, a.nota, a.comentario
from filmes f 
inner join generos g
on f.id_genero = g.id_genero
inner join avaliacoes a 
on f.id_filme = a.id_filme;




