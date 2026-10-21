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

USE biblioteca;
CREATE TABLE leitores(
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE emprestimos(
    id_emprestimo int AUTO_INCREMENT PRIMARY KEY,
    id_livro INT NOT NULL,
    id_leitor INT NOT NULL,
    FOREIGN KEY(id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY(id_leitor) REFERENCES leitores(id_leitor),
    data_emprestimo DATE NOT NULL,
    data_prevista_devolucao DATE NOT NULL
);
