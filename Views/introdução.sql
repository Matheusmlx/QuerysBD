/*VIEWS */
--Definição :
/*Segundo o devmedia(2019)"as views são consideradas pseudo-tables,ou seja, elas são
usadas junto a instrução SELECT para apresentar subconjuntos de dados 
presentes em tabelas reais"*/




--1) Crie uma VIEW chamada CLIENTES_MAIORES_VIEW.

CREATE OR REPLACE VIEW CLIENTES_MAIORES_VIEW AS

SELECT CLIENTE.NOME, TRUNC((SYSDATE - CLIENTE.DATANASCIMENTO)/366)

IDADE FROM CLIENTE

WHERE TRUNC((SYSDATE - CLIENTE.DATANASCIMENTO)/366) > 18;

SELECT * FROM CLIENTES_MAIORES_VIEW;

/*2) Crie uma VIEW chamada ULTIMO_PEDIDO_VIEW
para exibir qual o último pedido de cada cliente.*/

SELECT * FROM PEDIDO

CREATE OR REPLACE VIEW data_ultimo_pedido AS
select codcliente, max(datapedido) Ultimo_pedido
from pedido
group by codcliente

SELECT * FROM data_ultimo_pedido

/*3) Crie uma VIEW chamada TABELA_PRODUTO_VIEW para exibir
 quais os últimos valores praticados para cada
produto da base.*/

SELECT * FROM PEDIDO


