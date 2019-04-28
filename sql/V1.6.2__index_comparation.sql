create table table_b3_index (
  id integer,
  name varchar(50)
);

create table table_hash_index (
  id integer,
  name varchar(50)
);

create table table_brin_index (
  id integer,
  name varchar(50)
);

create index b3_index on table_b3_index (name);
create index hash_index on table_hash_index using hash(name);
create index brin_index on table_brin_index using brin(name);