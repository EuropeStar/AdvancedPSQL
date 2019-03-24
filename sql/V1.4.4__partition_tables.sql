create table heap_table (
  id integer,
  name varchar(50)
);

create table part_hub_table (
  id integer,
  name varchar(50)
) partition by hash(id);


create table part_1
partition of part_hub_table
for values with (modulus 10, remainder 0);

create table part_2
partition of part_hub_table
for values with (modulus 10, remainder 1);

create table part_3
partition of part_hub_table
for values with (modulus 10, remainder 2);

create table part_4
partition of part_hub_table
for values with (modulus 10, remainder 3);

create table part_5
partition of part_hub_table
for values with (modulus 10, remainder 4);

create table part_6
partition of part_hub_table
for values with (modulus 10, remainder 5);

create table part_7
partition of part_hub_table
for values with (modulus 10, remainder 6);

create table part_8
partition of part_hub_table
for values with (modulus 10, remainder 7);

create table part_9
partition of part_hub_table
for values with (modulus 10, remainder 8);

create table part_10
partition of part_hub_table
for values with (modulus 10, remainder 9);


insert into heap_table (id, name)
select generate_series, md5(generate_series::text) from generate_series(1, 1000000);

insert into part_hub_table (id, name)
select generate_series, md5(generate_series::text) from generate_series(1, 1000000);
