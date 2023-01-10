CREATE TABLE IF NOT EXISTS `livro` (
  `id_livro` int(5) unsigned NOT NULL,
  `cod_livro` int(5) unsigned NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `autor` varchar(50) NOT NULL,
  `categoria` varchar(10),
  `qtd_paginas` int(4),
  `localizacao` varchar(10),
  PRIMARY KEY (`id_livro`,`cod_livro`)
) DEFAULT CHARSET=utf8;

INSERT INTO `livro` (`id_livro`, `cod_livro`, `titulo`, `autor`, `categoria`, `qtd_paginas`, `localizacao`) VALUES
  ('00001', '00100', 'O pequeno Principe', 'Antoine de Saint-exupery', 'infantil', '96', 'E01P05'),
  ('00002', '00101', 'A ilha das árvores perdidas', 'Elif Shafak', 'Ficção', '352', 'E04P02'),
  ('00003', '00102', 'Dom Quixote', 'Miguel de Cervantes Saavedra', 'Ficção', '304', 'E04P05');

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(5) unsigned NOT NULL,
  `matricula` int(7) unsigned NOT NULL,
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(50),
  `telefone` int(9),
  `id_livro` int(5) unsigned,
  PRIMARY KEY (`id_usuario`,`cpf`),
  FOREIGN KEY (`id_livro`) REFERENCES `livro`(`id_livro`)
) DEFAULT CHARSET=utf8;

INSERT INTO `usuario` (`id_usuario`, `matricula`, `cpf`, `nome`, `endereco`, `telefone`, `id_livro`) VALUES
  ('12345', '2023201', '0230876578', 'Pedro Gustavo', 'Rua das Esmeraldas, 12', '988759900', '0001'),
  ('12346', '2023202', '0230876579', 'Julia Silva', 'Rua Carlos Chagas, 75', '988750087', '0003'),
  ('12347', '2023203', '0230876579', 'Clarissa Pereira', 'Rua Dalila Silva, 80', '988751514', '0002');

  select * from livro

select id_livro, titulo from livro 

select id_livro, titulo from livro
where categoria = 'Ficção'

select id_livro, titulo from livro
where titulo like '%principe%'

select cod_livro, titulo, categoria from livro
order by titulo

select cod_livro, titulo, categoria from livro
order by titulo desc
