# Banco-de-dados

## Para todos os comandos visite a pasta Projeto deste repositório.

---

## Exemplo de MODELAGEM

<img src="https://user-images.githubusercontent.com/114539889/211698573-1b7e5ebc-519d-467a-9662-9af1814e9061.png" alt="drawing" width="400"/>

## Exemplo de CREATE DATABASE

```sql
-- SQL COMMAND
CREATE DATABASE projeto_biblioteca
WITH OWNER postgres;
-- DESCRIÇÂO
-- ESTE COMANDO CRIA UMA DATABASE COM OWNER
```

## Exemplo de CREATE TABLE

```sql
-- SQL COMMAND
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
-- DESCRIÇÂO
-- ESTE COMANDO CRIA UMA TABELA
```

## Exemplo de INSERT

```sql
-- SQL COMMAND
INSERT INTO usuario (id_usuario, matricula, cpf, nome, endereco, telefone, id_livro) VALUES
  ('12345', '2023201', '0230876578', 'Pedro Gustavo', 'Rua das Esmeraldas, 12', '988759900', '0001'),
  ('12346', '2023202', '0230876579', 'Julia Silva', 'Rua Carlos Chagas, 75', '988750087', '0003'),
  ('12347', '2023203', '0230876579', 'Clarissa Pereira', 'Rua Dalila Silva, 80', '988751514', '0002');
-- DESCRIÇÂO
-- ESTE COMANDO INSERE DADOS NA TABELA USUÁRIO
```

## Exemplo de SELECT

```sql
-- SQL COMMAND
SELECT * FROM usuario AS u JOIN livro AS l
ON u.id_livro = l.id_livro;
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...
```

## Exemplo de UPDATE

```sql
-- SQL COMMAND
UPDATE livro
SET cod_livro = 108,
    titulo = 'A pequena Sereia'
WHERE id_livro = 1;
-- DESCRIÇÂO
-- ESTE UPDATE ATUALIZA O VALOR DO COD_LIVRO E DO TITULO QUANDO O ID_LIVRO É 1
```

## Exemplo de DELETE

```sql
-- SQL COMMAND
DELETE FROM usuario
WHERE id_usuario = 12347;
-- DESCRIÇÂO
-- ESTE COMANDO DELETA O USUÁRIO COM O ID_USUARIO 12347
```
