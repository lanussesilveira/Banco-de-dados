CREATE TABLE IF NOT EXISTS livro (
  id_livro INT NOT NULL UNIQUE,
  cod_livro INT NOT NULL,
  titulo VARCHAR(50) NOT NULL,
  autor VARCHAR(50) NOT NULL,
  categoria VARCHAR(10),
  qtd_paginas INT,
  localizacao VARCHAR(10),
  PRIMARY KEY (id_livro)
);

CREATE TABLE IF NOT EXISTS usuario (
  id_usuario INT NOT NULL,
  matricula INT NOT NULL,
  cpf INT NOT NULL,
  nome VARCHAR(50) NOT NULL,
  endereco VARCHAR(50),
  telefone INT,
  id_livro INT,
  PRIMARY KEY (id_usuario,cpf),
  FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);