/* Sor beszúrása: INSERT INTO táblázatNeve VALUES (adatok);
Az adatok balról jobbra kerülnek hozzáadva a táblázat oszlopaiba.
 */
INSERT INTO employees VALUES(1, "Eugene", "Krabs", 25.50, "2023-01-02");


/* Lehet több sort is sort is megadni:  INSERT INTO táblázatNeve VALUES (értékek1), (érékek2), (...), ...*/
INSERT INTO employees VALUES(2, "Squidward", "Tentacles", 15.00, "2023-01-03"), (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"), (4, "Patrick", "Star", 12.50 "2023-01-05"), (5, "Sandy", "Cheeks", 17.25, "2023-01-06");

/* Meglehet adni, hogy mely oszlopba kerüljön az adat: INSERT INTO táblázatNeve(oszlop neve1, oszlop neve2, ...) VALUES (értékek)
Ez a módszer engedi, hogy null értékként maradjanak meg a hiányos adatok, ami egyébként hiba lenne.*/*/

INSERT INTO employees (employee_id, first_name, last_name) VALUES (6, "Sheldon", "Plankton");