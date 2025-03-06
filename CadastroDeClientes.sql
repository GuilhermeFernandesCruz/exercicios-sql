CREATE DATABASE CadastroDeClientes;

USE CadastroDeClientes;

CREATE TABLE CLIENTE (
	idcliente INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(90)
);

CREATE TABLE ENDERECO (
	idendereco INT PRIMARY KEY AUTO_INCREMENT,
	rua VARCHAR(30),
	bairro VARCHAR(30),
	cidade VARCHAR(30),
	estado CHAR(2),
	id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES CLIENTE(idcliente)
);

CREATE TABLE CONTATO (
	idcontato INT PRIMARY KEY AUTO_INCREMENT,
	telefone VARCHAR(20) UNIQUE,
	email VARCHAR(50) UNIQUE,
	id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES CLIENTE(idcliente)
);

INSERT INTO CLIENTE (nome) VALUES 
('Guilherme Cruz'),
('João Silva'),
('Maria Oliveira'),
('Carlos Santos'),
('Ana Souza');

INSERT INTO ENDERECO (rua, bairro, cidade, estado, id_cliente) VALUES 
('Rua das Flores', 'Centro', 'São Paulo', 'SP', 1),
('Avenida Brasil', 'Jardim América', 'Rio de Janeiro', 'RJ', 2),
('Rua da Paz', 'Boa Vista', 'Belo Horizonte', 'MG', 3),
('Travessa do Sol', 'Copacabana', 'Rio de Janeiro', 'RJ', 4),
('Rua do Comércio', 'Centro', 'Porto Alegre', 'RS', 5);

INSERT INTO CONTATO (telefone, email, id_cliente) VALUES 
('11987654321', 'guilherme@email.com', 1),
('21987654322', 'joao@email.com', 2),
('31987654323', 'maria@email.com', 3),
('21987654324', 'carlos@email.com', 4),
('51987654325', 'ana@email.com', 5);
