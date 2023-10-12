/* LIMIT limitálja a maximum megjelítendő sort: SELECT * FROM táblázatNeve LIMI érték; */

SELECT * FROM customers LIMIT 1;
SELECT * FROM customers ORDER BY last_name DESC LIMIT 1;

/* Több érték megadásakor az első a kezdőt fogja megadni míg a második a mennyiséget: SELECT * FROM táblázatNeve LIMIT kezd, darab */
SELECT * FROM táblázatNeve LIMIT 1, 2;
SELECT * FROM táblázatNeve LIMIT 2, 5;