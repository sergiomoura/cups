CREATE DATABASE cups DEFAULT CHARACTER SET utf8 ;
USE cups;

CREATE TABLE categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  created_at TIMESTAMP NULL,
  updated_at TIMESTAMP NULL,
  PRIMARY KEY (id));

INSERT INTO categorias (nome,created_at,updated_at) VALUES ('Programação',NOW(),NOW());
INSERT INTO categorias (nome,created_at,updated_at) VALUES ('Cultura POP',NOW(),NOW());
INSERT INTO categorias (nome,created_at,updated_at) VALUES ('Românticas',NOW(),NOW());
INSERT INTO categorias (nome,created_at,updated_at) VALUES ('Família',NOW(),NOW());

CREATE TABLE produtos (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  id_categoria INT NOT NULL,
  preco DECIMAL(5,2) NOT NULL DEFAULT 0,
  quantidade INT NOT NULL DEFAULT 0, 
  imagem VARCHAR(255) NULL,
  created_at TIMESTAMP NULL,
  updated_at TIMESTAMP NULL,
  PRIMARY KEY (id),
  INDEX fk_categoria_idx (id_categoria ASC),
  CONSTRAINT fk_categoria
    FOREIGN KEY (id_categoria)
    REFERENCES categorias (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Header', '1', '15', '10',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Programo em tudo', '1', '18', '15',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Harry Potter', '2', '13', '33',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Star Wars', '2', '22', '55',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Te Amo Até o Café Acabar', '3', '12', '66',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Coração S2', '3', '19', '12',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Amo a Vovó', '4', '11', '44',NOW(),NOW());
INSERT INTO produtos (nome, id_categoria, preco, quantidade, created_at, updated_at) VALUES ('Amo o Vovô', '4', '11', '14',NOW(),NOW());

