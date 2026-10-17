create DATABASE biblioteca;
USE biblioteca;

create table autores(
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) not NULL,
    email varchar(150) unique
);

create table livros(
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150 ) NOT NULL,
    ano_publicacao YEAR,
    categoria VARCHAR(60) NOT NULL,
    disponivel BOOLEAN NOT NULL DEFAULT TRUE,
    id_autor int not NULL,
   FOREIGN KEY(id_autor) REFERENCES autores(id_autor)
);