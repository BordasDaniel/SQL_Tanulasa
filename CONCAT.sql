/* A CONCAT összefűz szavakat. */
SELECT CONCAT("szó1", "szó2", ...);

/* Lehet használni mezőket is. */
SELECT CONCAT(mező1, "szó1");

/* Ha azt akarjuk, hogy legyen a szavak közt szóköz akkor kell minden szó után egy ' '  */

SELECT CONCAT("szó1", ' ', "szó2");

/* Vagy */

SELECT CONCAT("szó1 ", "szó2");