create table t2_logged_table (
  id integer,
  message varchar(100),
  created date
);

create unlogged table t2_unlogged_table(
  id integer,
  message varchar(100),
  created date
);