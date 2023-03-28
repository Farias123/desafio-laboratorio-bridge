CREATE OR REPLACE FUNCTION criar_produtos(n INTEGER)
RETURNS VOID AS $$
DECLARE
    i INTEGER;
    nome TEXT;
    descricao TEXT;
    preco NUMERIC(10,2);
    categoria TEXT;
    indice INTEGER;
BEGIN
    FOR i IN 1..n LOOP
        indice := floor(random()*i + 1);
        nome := 'Produto' || indice;
        descricao := 'Descricao' || indice;
        preco := round(cast(random()*100.0 as numeric), 2);
        categoria := 'Categoria' || floor(random()*i + 1);
        INSERT INTO produtos (nome, descricao, preco, categoria) VALUES (nome, descricao, preco, categoria);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT criar_produtos(250);

CREATE OR REPLACE FUNCTION criar_pedidos(n INTEGER)
RETURNS VOID AS $$
DECLARE
    i INTEGER;
    nome_pedido TEXT;
    descricao TEXT;
    data_pedido DATE;
    endereco TEXT;
    preco_pedido NUMERIC(10,2);
    nome_cliente TEXT;
    quantidade_vendida INTEGER;
    indice INTEGER;
BEGIN
    FOR i IN 1..n LOOP
        indice := floor(random()*i + 1);
        nome_pedido := 'Pedido' || indice;
        descricao := 'Descrição' || indice;
        data_pedido := CURRENT_DATE - INTERVAL '1 year' * random();
        endereco := 'Endereço' || i;
        preco_pedido := round(cast(random()*200.0 as numeric), 2);
        nome_cliente := 'Cliente' || floor(random()*i + 1);
        quantidade_vendida := floor(random()*i + 1);
        INSERT INTO pedidos (pedido, descricao, data, endereco, preco_total, nome_cliente, quantidade_vendida)
        VALUES (nome_pedido, descricao, data_pedido, endereco, preco_pedido, nome_cliente, quantidade_vendida);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT criar_pedidos(250);