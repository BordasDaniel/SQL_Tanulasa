/* A dátumok formázására a DATE_FORMAT() függvény használható. */
/* now() = 2023-12-07 20:56:11  (a legpontosabb)*/
/* current_date = 2023-12-07 */
/* YEAR() = minden dátumot évre kerekít (pl., 2023-01-24 = 2023) */

/* 
Példák néhány formátumra:
%Y: Év, négy számjeggyel (pl., 2023)
%y: Év, két számjeggyel (pl., 23)
%M: Hónap betűvel (pl., Január)
%m: Hónap, két számjeggyel (pl., 01)
%D: Nap, kétszámjeggyel + th (pl., 31th)
%d: Nap, két számjeggyel (pl., 31)
%H: Óra, két számjeggyel (0-24) (pl., 21)
%H: Óra, két számjeggyel (0-12) (pl., 9)
%i: Perc, két számjeggyel (pl., 59)
%s: Másodperc, két számjeggyel (pl., 59)
 */


/* DATE_FORMAT használata: */

SELECT DATE_FORMAT(idő, pontosság);
/* pl.: */

SELECT DATE_FORMAT(now(), "%Y %M %D"); 
/*  2023 December 7th */

/* Ha azt akarjuk, hogy pont válassza el őket egymástól. */
SELECT DATE_FORMAT(current_date, "%Y.%m.%d");
/* 2023.12.07 */



/* DATEDIFF */

/* Két dátum közötti nap különbséget adja vissza. */
/* Használata: */
SELECT DATEDIFF(dátum1, dátum2);

/* pl.: */
SELECT ABS(DATEDIFF("2006-01-24", current_date));
/* 6526 */



/* TIMESTAMPDIFF */

/* Két dátum közötti különbséget adja vissza. */
/* Használata: */
SELECT TIMESTAMPDIFF(pontosság, dátum1, dátum2);  
/* A dátum idézőjelben van */

/* pl.: */

SELECT TIMESTAMPDIFF(year, "2006-01-24", current_date);
/* 17 */


/* FROM_DAYS */

/* Visszatér egy dátummal (napokat kér és annyi nappal későbbi dátumot ad vissza ahány napot kapott) */
/* Használata: */
SELECT FROM_DAYS(nap);

/* pl.: */

SELECT FROM_DAYS(600);
/* 0001-08-23 */

/* Ez szerkesztve: */

SELECT DATE_FORMAT(FROM_DAYS(600), "%y");
/* 01 */