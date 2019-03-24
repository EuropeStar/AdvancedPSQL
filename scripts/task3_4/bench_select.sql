\setrandom id 1, 1000000;
BEGIN;
SELECT * FROM table_name WHERE id = :id;
COMMIT;
