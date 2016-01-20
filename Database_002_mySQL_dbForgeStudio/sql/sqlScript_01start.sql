/* show all DATABASES in this server */
SHOW DATABASES;

/* get inside a specific database */
USE mercado_v2;

/* show all TABLES in this database */
SHOW TABLES;

/* show full description of the TABLE */
DESCRIBE mercado.compras;

/* basic query to table for all values in columns */
SELECT * FROM mercado.compras
WHERE nome LIKE 'am%'
;

/**/
SELECT * FROM mercado.vendas;

/* -------------------------------------------- */
/* ALL */
SELECT * FROM mercado.compras
;

/* SPECIFIC NAME */
SELECT * FROM mercado.compras
WHERE nome LIKE 'maria'
;

/* FUNCTION SUM IN COLUMN TOTAL */
SELECT SUM(valor) AS TOTAL, nome AS NAME 
FROM mercado.compras
GROUP BY nome
;





