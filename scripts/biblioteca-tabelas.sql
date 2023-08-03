CREATE DATABASE `biblioteca`;
USE `biblioteca`;
CREATE TABLE `Clientes` (
  `cliente_id` int PRIMARY KEY,
  `nome_cliente` varchar(255),
  `email_cliente` varchar(255),
  `telefone_cliente` int
);

CREATE TABLE `Emprestimos` (
  `emprestimo_id` int PRIMARY KEY,
  `data_emprestimo` date,
  `livro_id` int,
  `cliente_id` int
);

CREATE TABLE `Livros` (
  `livro_id` int PRIMARY KEY,
  `titulo_livro` varchar(255),
  `genero_livro` varchar(255),
  `autor_id` int
);

CREATE TABLE `Editoras` (
  `editora_id` int PRIMARY KEY,
  `nome_editora` varchar(255),
  `pais_editora` varchar(255)
);

CREATE TABLE `Autores` (
  `autor_id` int PRIMARY KEY,
  `nome_autor` varchar(255),
  `pais_autor` varchar(255),
  `editora_id` int
);

ALTER TABLE `Emprestimos` ADD FOREIGN KEY (`livro_id`) REFERENCES `Livros` (`livro_id`);

ALTER TABLE `Emprestimos` ADD FOREIGN KEY (`cliente_id`) REFERENCES `Clientes` (`cliente_id`);

ALTER TABLE `Livros` ADD FOREIGN KEY (`autor_id`) REFERENCES `Autores` (`autor_id`);

ALTER TABLE `Autores` ADD FOREIGN KEY (`editora_id`) REFERENCES `Editoras` (`editora_id`);
