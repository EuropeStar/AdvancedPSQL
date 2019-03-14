create table clustered_table (
  id integer,
  name varchar(50)
);

create index id_idx on clustered_table (id);