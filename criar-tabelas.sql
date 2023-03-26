Produtos(nome, descricao, preco, categoria)

Categorias(categoria, num_produtos)

Pedidos(pedido, data, endereco, preco_total, nome_cliente)

Produtos_vendidos(nome, descricao, preco, quantidade_vendida)

Produtos_replicados(nome, quantidade_replicacoes)

CREATE TABLE IF NOT EXISTS Produtos(
nome VARCHAR(30),
descricao TEXT,
preco DECIMAL,
categoria VARCHAR(30)
);

CREATE TABLE  IF NOT EXISTS Pedidos(
pedido VARCHAR(100),
data DATE,
endereco VARCHAR(100),
preco_total DECIMAL,
nome_cliente VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS


CREATE TABLE IF NOT EXISTS Categorias AS 
SELECT categoria, COUNT(*) AS num_produtos 
FROM Produtos 
GROUP BY categoria;

CREATE TABLE IF NOT EXISTS Produtos_replicados AS 
SELECT nome, COUNT(*) - 1 AS quantidade_replicacoes 
FROM Produtos 
GROUP BY nome 
HAVING COUNT(*) > 1;

do $$
declare 
       linha record;
declare
       contador integer:= 1;
begin
       for linha in SELECT * FROM Produtos LOOP
       contador:= contador + 1;
END LOOP
end $$;

Categorias(nome)- iterar dentro da tabela produto(categoria) e pegar uma por uma(caso ainda não exista)
(numero_de_produtos)- iterar dentro da tabela produto(categoria) e para cada categorias(nome) contar a quantidade de produtos da categoria.

Produtos_replicados- iterar dentro de produtos(nome) se não estiver já em produtos_replicados(nome), contar quantas vezes esse produto aparece, se for maior que 1, guardar em (nome) e (vezes que aparece - 1) em (quantidade_replicada)

SELECT nome, descricao, preco FROM Produtos
ORDER BY nome

SELECT * FROM Categorias
ORDER BY nome

SELECT data, endereco, preco_total FROM Pedidos
ORDER BY data DESC

SELECT * FROM Produtos_vendidos
ORDER BY quantidade_vendida DESC

SELECT pedido FROM Pedidos
WHERE nome_cliente = Cliente1
ORDER BY nome_cliente ASC, data ASC

SELECT * FROM Produtos_replicados
ORDER BY quantidade_replicacoes DESC