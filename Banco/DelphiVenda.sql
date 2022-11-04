CREATE DATABASE IF NOT EXISTS VENDA;
USE VENDA;

CREATE TABLE IF NOT EXISTS CIDADE(
	IDCIDADE INT NOT NULL,
    NOMECIDADE VARCHAR(50),
    SIGLAESTADO VARCHAR(2),
    PRIMARY KEY(IDCIDADE)
);

CREATE TABLE IF NOT EXISTS CLIENTE(
	IDCLIENTE INT NOT NULL,
    NOMECLIENTE VARCHAR(50),
    ENDERCLIENTE VARCHAR(50),
    CPFCLIENTE VARCHAR(20),
    FONECLIENTE VARCHAR(20),
    IDCIDADE INT,
    PRIMARY KEY(IDCLIENTE),
    FOREIGN KEY(IDCIDADE) REFERENCES CIDADE(IDCIDADE)
);

CREATE TABLE IF NOT EXISTS VENDA(
	IDVENDA INT NOT NULL,
    DATAVENDA DATE,
    HORAVENDA TIME,
    VALORVENDA NUMERIC(8,2),
    IDCLIENTE INT,
    PRIMARY KEY(IDVENDA),
    FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE(IDCLIENTE)
);

CREATE TABLE IF NOT EXISTS PRODUTO(
	IDPRODUTO INT NOT NULL,
    DESCPRODUTO VARCHAR(50),
    VALORPRODUTO NUMERIC(8,2),
    QTDEPRODUTO INT,
    PRIMARY KEY(IDPRODUTO)
);

CREATE TABLE IF NOT EXISTS ITENSVENDA(
	IDVENDA INT NOT NULL,
    IDPRODUTO INT NOT NULL,
    IDITENS INT NOT NULL,
    VALORITENS NUMERIC (8,2),
    QTDEITENS INT,
    PRIMARY KEY(IDVENDA, IDPRODUTO, IDITENS),
    FOREIGN KEY (IDVENDA) REFERENCES VENDA(IDVENDA),
    FOREIGN KEY (IDPRODUTO) REFERENCES PRODUTO(IDPRODUTO)
);


