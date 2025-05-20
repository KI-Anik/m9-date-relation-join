SELECT now()

create table timeZ ( ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone)

INSERT INTO timeZ VALUES ('2025-01-12 10:45','2025-01-12 10:45')

SELECT * from timeZ

SELECT CURRENT_DATE

SELECT now():: date

SELECT now():: time

SELECT to_char(now(), 'dd-mm-yyyy')

SELECT to_char (now(), 'month')

SELECT CURRENT_DATE - INTERVAL '1 year 2 month'

SELECT age( CURRENT_DATE, '1995-5-5' ) 

SELECT *, age(CURRENT_DATE, dob) FROM students

SELECT *, extract  (YEAR from dob) as passing_year from students

SELECT 'n' :: BOOLEAN -- false