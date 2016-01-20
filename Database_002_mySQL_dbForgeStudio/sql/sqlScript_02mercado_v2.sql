/* -------------------------------------------- */
/* ALL */
SELECT * FROM mercado_v2.clientes
;

/* SPECIFIC NAME */
SELECT * FROM mercado_v2.clientes
WHERE cli_nome LIKE 'maria'
;

/* FUNCTION SUM IN COLUMN TOTAL */
SELECT SUM(valor) AS TOTAL, nome AS NAME 
FROM mercado.compras
GROUP BY nome
;







