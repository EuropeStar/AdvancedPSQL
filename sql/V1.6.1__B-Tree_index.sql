create table table_for_btree(
  a int,
  b int,
  c int
);

create index btree_a on table_for_btree (a);
create index btree_b on table_for_btree (b);
create index btree_c on table_for_btree (c);

create index btree_ab on table_for_btree (a, b);
create index btree_ac on table_for_btree (a, c);
create index btree_bc on table_for_btree (b, c);

create index btree_abc on table_for_btree (a,b,c);