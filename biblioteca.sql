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

INSERT into autores (nome, email) VALUES
('Crolina Maria de Jesus', 'carolina@example.com'),
('Clarice Liespector', 'claruce@example.com');

INSERT into livros (titulo, ano_publicacao, categoria, id_autor) VALUES
('Quarto de Despejo', 1960, 'Biografia', 6),
('A Hora da Estrela', 1977, 'Romance', 7);

select * FROM autores;
SELECT * FROM livros;

SELECT titulo, categoria 
from livros
where categoria = 'Romance';

select titulo, ano_publicacao
from livros
order by ano_publicacao ASC;

