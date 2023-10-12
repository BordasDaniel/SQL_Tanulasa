/* 
Az adatbázisok olyanok mint a mappák amelyek kontérenereket tartalmaznak.
Nincs case sensitivity MySQL vagyis az alapszavak lehetnek kicsivel vagy naggyal írva pl.: CREATE create
Pontosvessző van a sorok végén.
*/
  

/* Adatbázis létrehozása: CREATE DATABASE név;
A névnek egyedinek kell lennie.
*/

CREATE DATABASE myDB;

/* Egy adatbázik kiválasztásához vagy kattinthatunk vagy használhatjuk a: USE adatbázisNeve; parancsot*/

USE myDB;

/* Adatbázis eldobásához: DROP DATABASE adatbázisNeve;
Érdemes így használni a hibák elkerülése érdekében:
DROP DATABASE  IF EXISTS adatbázisNeve;
Ez megnézi, hogy van-e létező adatbázis ilyen névvel.
 */

DROP DATABASE IF EXISTS myDB;

/* Adatbázis csakis olvashatóvá tétele: ALTER DATABASE adatbázisNeve READ ONLY = 1; 
Ha egy adatbázis csakis olvasható akkor nem lehet módosítani, de el lehet érni az adatokat.
Eldobni sem lehet.
*/
ALTER DATABASE myDB READ ONLY = 1;

/* Read only kilépése:
ALTER DATABASE adatbázisNeve READ ONLY = 0;
*/

ALTER DATABASE myDB READ ONLY = 0;


