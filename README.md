# desafio-suporte
Esse programa usa PostgreSQL para criar dados aleatórios para uma empresa em relação aos seus produtos,
pedidos e categorias de produtos. Nesse programa, podem ser feitas seis consultas diferentes no banco 
de dados. Você pode usar o banco de dados que eu criei usando o arquivo de backup. As relações entre
as tabelas e seus dados é mostrada na imagem do diagrama de entidade relacional.

Para que o código funcione corretamente, após criado o banco de dados, apenas as duas primeiras tabelas 
devem ser criadas, as últimas três devem ser criadas após valores serem atribuídos às duas tabelas 
iniciais.

## criar-tabelas.sql
O arquivo criar-tabelas serve para que as tabelas sejam criadas corretamente, usando o código deste 
documento, um banco de dados genérico será criado, assim como as tabelas produto e pedidos. Antes de 
criar as tabelas pedidos_vendidos, categorias e produtos_replicados é preciso atribuir valores nas duas 
primeiras tabelas usando as funções do arquivo valores-aleatorios.

## valores-aleatorios.sql
Esse arquivo guarda as funções criar_produtos e criar_pedidos, essas funções criam dados aleatórios 
para as tabelas produtos e pedidos respectivamente. Após os dados das duas tabelas serem gerados, 
voltamos para a criação do restante das tabelas:

Categorias acessa a tabela produtos, pega todas as categorias que estão lá e o número de vezes que 
aparecem, pedidos_vendidos retorna pedidos porém sem cópias e produtos_replicados procura na tabela 
produtos toda vez que um produto aparece mais de uma vez e conta quantas vezes ele é replicado.

## consultas.sql
Quando as tabelas estiverem prontas realizamos as consultas no banco de dados, envolvendo parâmetros 
para filtrar o conteúdo das tabelas. No total, são 6 consultas, uma de cada tabela, exceto com pedidos, 
que possui duas consultas.

## drop.sql
O arquivo drop serve para apagar todas as tabelas e funções, caso você resolva apagar todos os dados e 
gerar novos do zero, ou se precisar apagar uma das funções.

## diagrama-entidade-relacional.png
Essa imagem mostra as relações entre os dados das tabelas, podemos observar a representação de um para muitos nas linhas que ligam as tabelas. Para cada categoria existem diversos produtos, diversos produtos compoem um pedido, muitos produtos iguais na lista de produtos resulta em apenas um elemento em produtos_replicados e finalmente, apenas um modelo de pedido pode ser vendido múltiplas vezes.
