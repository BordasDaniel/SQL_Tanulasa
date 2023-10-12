/* Adat lekérése a táblázatból. */


/* Minden adat lekérése a táblázatból: SELECT * FROM tálázatNeve; */
SELECT * FROM employees;

/* Bizonyos oszlop lekérése a táblázatból: SELECT oszlopNeve FROM táblázatNeve; */
SELECT first_name, last_name FROM employees;

/* Minden sor lekérése a táblázatból: SELECT * FROM táblázatNeve WHERE kritérium;  */
SELECT * FROM employees WHERE employee_id = 1;
SELECT * FROM employees WHERE first_name = "Spongebob";
SELECT * FROM employees WHERE hourly_pay >= 15;
SELECT * FROM employees WHERE hire_date <= "2023-01-03";
SELECT * FROM employees WHERE employee_id != 1;
SELECT * FROM employees WHERE hire_date IS NULL;
SELECT * FROM employees WHERE hire_date IS NOT NULL;
