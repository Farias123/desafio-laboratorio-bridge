SELECT nome, descricao, preco FROM produtos
ORDER BY nome ASC;

SELECT * FROM Categorias
ORDER BY categoria ASC;

SELECT data, endereco, preco_total FROM pedidos
ORDER BY data DESC;

SELECT * FROM pedidos_vendidos;
ORDER BY quantidade_vendida DESC;

SELECT pedido FROM pedidos
WHERE nome_cliente = 'Cliente1' AND data <= '2023-04-01' AND data >= '2023-03-01'
ORDER BY nome_cliente ASC, data ASC;

SELECT * FROM produtos_replicados
ORDER BY quantidade_replicacoes DESC;