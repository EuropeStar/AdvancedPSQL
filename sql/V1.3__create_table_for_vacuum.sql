create table vacuum_test_table (
  id integer,
  name varchar(50)
) with (autovacuum_enabled = false, autovacuum_vacuum_threshold = 100);

insert into vacuum_test_table (id, name) values (1, 'Testing one row');