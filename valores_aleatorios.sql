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

SELECT criar_produtos(50);

CREATE OR REPLACE FUNCTION criar_pedidos(n INTEGER)
RETURNS VOID AS $$
DECLARE
    i INTEGER;
    pedido TEXT;
    data DATE;
    endereco TEXT;
    preco_total NUMERIC(10,2);
    nome_cliente TEXT;
BEGIN
    FOR i IN 1..n LOOP
        pedido := 'Pedido' || floor(random()*4 + 1);
        data := CURRENT_DATE - INTERVAL '1 year' * random();
        endereco := 'Endereço' || i;
        preco_total := round(cast(random()*100.0 as numeric), 2);
        nome_cliente := 'Cliente' || floor(random()*i + 1);
        INSERT INTO pedidos (pedido, data, endereco, preco_total, nome_cliente)
        VALUES (pedido, data, endereco, preco_total, nome_cliente);
    END LOOP;
END;
$$ LANGUAGE plpgsql;

SELECT criar_pedidos(50);

