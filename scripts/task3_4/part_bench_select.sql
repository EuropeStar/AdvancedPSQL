\set id random(1, 1000000)
BEGIN;
SELECT * FROM part_hub_table WHERE id = :id;
COMMIT;
