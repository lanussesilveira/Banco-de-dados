INSERT INTO livro (id_livro, cod_livro, titulo, autor, categoria, qtd_paginas, localizacao) VALUES
  ('00001', '00100', 'O pequeno Principe', 'Antoine de Saint-exupery', 'infantil', '96', 'E01P05'),
  ('00002', '00101', 'A ilha das árvores perdidas', 'Elif Shafak', 'Ficção', '352', 'E04P02'),
  ('00003', '00102', 'Dom Quixote', 'Miguel de Cervantes Saavedra', 'Ficção', '304', 'E04P05');


INSERT INTO usuario (id_usuario, matricula, cpf, nome, endereco, telefone, id_livro) VALUES
  ('12345', '2023201', '0230876578', 'Pedro Gustavo', 'Rua das Esmeraldas, 12', '988759900', '0001'),
  ('12346', '2023202', '0230876579', 'Julia Silva', 'Rua Carlos Chagas, 75', '988750087', '0003'),
  ('12347', '2023203', '0230876579', 'Clarissa Pereira', 'Rua Dalila Silva, 80', '988751514', '0002');
