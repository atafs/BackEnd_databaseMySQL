/* INNER JOIN ############### */

/* CLIENTES */
SELECT *
FROM mercado_v2.clientes AS C
;

/* PEDIDOS */
SELECT *
FROM mercado_v2.pedidos AS P
;

/* CLIENTES e PEDIDOS */
SELECT *
FROM mercado_v2.clientes, mercado_v2.pedidos

/* INNER JOIN CLIENTES, PEDIDOS */
SELECT P.ped_data, P.ped_id, C.cli_nome, P.ped_codigo
FROM mercado_v2.clientes AS C 
INNER JOIN mercado_v2.pedidos AS P 
  ON C.cli_id = P.ped_cliente
;

/* INNER JOIN ITENS, PRODUTOS */
SELECT P.pro_nome, I.itens_qtd
FROM mercado_v2.itens AS I 
INNER JOIN mercado_v2.produtos AS P 
  ON I.itens_id = P.pro_id
;
