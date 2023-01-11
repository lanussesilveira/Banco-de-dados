-- SQL COMMAND
SELECT * FROM livro
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT id_livro, titulo FROM livro 
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT id_livro, titulo FROM livro
WHERE categoria = 'Ficção'
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT id_livro, titulo FROM livro
WHERE titulo LIKE '%principe%'
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT cod_livro, titulo, categoria FROM livro
ORDER BY titulo
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT cod_livro, titulo, categoria FROM livro
ORDER BY titulo DESC
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...

-- SQL COMMAND
SELECT * FROM usuario AS u JOIN livro AS l
ON u.id_livro = l.id_livro;
-- DESCRIÇÂO
-- ESTE SELECT FAZ UM JOIN...
