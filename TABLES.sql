/* Egy táblázat csakúgy mint egy excel táblázat sorokból és oszlopokból áll. 
Létrehozása: CREATE TABLE táblázatNeve (oszlopok típusokkal);
Minden sort egy vessző választ el.

Alap adattípus:
INT - szám
VARCHAR(max karakterek száma) - szöveg
DECIMAL(maxkarakter, pontosság) - tizedesszám
DATE - dátum
*/

CREATE TABLE employees (

    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE

);

/* Tábla kiválasztása: SELECT * FROM táblázatNeve;
* jelentése = minden
*/
SELECT * FROM employees;

/* Táblázat átnevezése: RENAME TABLE táblázatEredetiNeve TO táblázatÚjNeve; */
RENAME TABLE employees TO workers;

/* Ha módosítani akarod a táblázatot: ALTER TABLE táblázatNeve ...*/
ALTER TABLE employees ADD phone_number VARCHAR(15);


/* Táblázat oszlopának nevének megváltoztatása: ALTER TABLE táblázatNeve RENAME COLUMN erdetiNév TO újNév; */
ALTER TABLE employees RENAME COLUMN phone_number TO email;


/* Táblázat oszlopának típusának megváltoztatása: ALTER TABLE táblázatNeve MODIFY COLUMN oszlopánakNeve oszlopánakTípusa; */
ALTER TABLE employees MODIFY COLUMN email VARCHAR(100);


/* Táblázat oszlopának eltolása: ALTER TABLE táblázatNeve MODIFY oszlopánakNeve oszlopánakTípusa pozíció  */
ALTER TABLE employees MODIFY email VARCHAR(100) AFTER last_name; /* A last name után lesz. */
ALTER TABLE employees MODIFY email VARCHAR(100) FIRST; /* Első lesz. */


/* Oszlop eldobása: ALTER TABLE táblázatNeve DROP COLUMN sorNeve 
ALTER TABLE employees DROP COLUMN email;