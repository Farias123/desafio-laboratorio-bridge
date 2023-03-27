SELECT nome, descricao, preco FROM produtos
ORDER BY nome

SELECT * FROM Categorias
ORDER BY nome

SELECT data, endereco, preco_total FROM pedidos
ORDER BY data DESC

SELECT * FROM produtos_vendidos
ORDER BY quantidade_vendida DESC

SELECT pedido FROM pedidos
WHERE nome_cliente = Cliente1
ORDER BY nome_cliente ASC, data ASC

SELECT * FROM produtos_replicados
ORDER BY quantidade_replicacoes DESC