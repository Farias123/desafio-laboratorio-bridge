CREATE DATABASE IF NOT EXISTS empresa_generica;

\c empresa_generica;


CREATE TABLE IF NOT EXISTS produtos(
nome TEXT,
descricao TEXT,
preco NUMERIC(10,2),
categoria TEXT
);


CREATE TABLE IF NOT EXISTS pedidos(
pedido TEXT,
data DATE,
endereco TEXT,
preco_total NUMERIC(10,2),
nome_cliente TEXT
);


CREATE TABLE IF NOT EXISTS pedidos_vendidos AS
SELECT DISTINCT ON (pedido) * 
FROM pedidos;


CREATE TABLE IF NOT EXISTS categorias AS 
SELECT categoria, COUNT(*) AS num_produtos 
FROM Produtos 
GROUP BY categoria;


CREATE TABLE IF NOT EXISTS produtos_replicados AS 
SELECT nome, COUNT(*) - 1 AS quantidade_replicacoes 
FROM Produtos 
GROUP BY nome 
HAVING COUNT(*) > 1;

DROP TABLE produtos;
DROP TABLE pedidos;
DROP TABLE pedidos_vendidos;
DROP TABLE categorias;
DROP TABLE produtos_replicados;