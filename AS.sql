/* Az AS parancs egy oszlop vagy táblázat alias névvel történő átnevezésére szolgál.
   Az alias csak a lekérdezés időtartamára létezik. */

/* Használat */
SELECT oszlopNeve AS OszlopÚjNeve FROM táblázat;

/* Lehet egyszerre többet is átnevezni. */

SELECT oszlopNeve1 AS OszlopÚjNeve1, oszlopNeve2 AS OszlopÚjNeve3, ... FROM táblázat;

/* Ha egy szavas az új név akkor nem muszáj idézőjelet használni viszont ha több akkor muszáj. */

SELECT oszlopNeve1 AS "Oszlop Új Neve", ... FROM táblázat;

/* Lehet egyszerre több adatot is összefűzni egy stringbe majd adni neki egy nevet */

SELECT oszlopNeve1, CONCAT(oszlopNeve1, ', ',oszlopNeve2, ', ',...) AS OszlopÚjNeve FROM táblázat;
