create schema schema_1;
create schema schema_2;
create schema schema_3;

create table schema_1.sc_table (
  id integer,
  name varchar(50)
);

create table schema_2.sc_table (
  id integer,
  name varchar(50)
);

create table schema_3.sc_table (
  id integer,
  name varchar(50)
);

create extension postgres_fdw;

create server pg_log foreign data wrapper postgres_fdw
options (host '127.0.0.1', port '5432', dbname 'db_course');

create user mapping for postgres server pg_log
options (user 'postgres', password 'postgres');


-- create foreign tables

create foreign table f_table_1 (
  id integer,
  name varchar(50)
) server pg_log
options (schema_name 'schema_1', table_name 'sc_table');

create foreign table f_table_2 (
  id integer,
  name varchar(50)
) server pg_log
options (schema_name 'schema_2', table_name 'sc_table');

create foreign table f_table_3 (
  id integer,
  name varchar(50)
) server pg_log
options (schema_name 'schema_3', table_name 'sc_table');
