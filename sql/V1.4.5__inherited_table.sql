create table inherited_hub_table (
  id integer,
  name varchar(50)
);

create table inh_part_1 () inherits (inherited_hub_table);
create table inh_part_2 () inherits (inherited_hub_table);
create table inh_part_3 () inherits (inherited_hub_table);
create table inh_part_4 () inherits (inherited_hub_table);
create table inh_part_5 () inherits (inherited_hub_table);
create table inh_part_6 () inherits (inherited_hub_table);
create table inh_part_7 () inherits (inherited_hub_table);
create table inh_part_8 () inherits (inherited_hub_table);
create table inh_part_9 () inherits (inherited_hub_table);
create table inh_part_10 () inherits (inherited_hub_table);

alter table inh_part_1
add constraint partition_check
check (id >= 0 and id < 100000);

alter table inh_part_2
add constraint partition_check
check (id >= 100000 and id < 200000);

alter table inh_part_3
add constraint partition_check
check (id >= 200000 and id < 300000);

alter table inh_part_4
add constraint partition_check
check (id >= 300000 and id < 400000);

alter table inh_part_5
add constraint partition_check
check (id >= 400000 and id < 500000);

alter table inh_part_6
add constraint partition_check
check (id >= 500000 and id < 600000);

alter table inh_part_7
add constraint partition_check
check (id >= 600000 and id < 700000);

alter table inh_part_8
add constraint partition_check
check (id >= 700000 and id < 800000);

alter table inh_part_9
add constraint partition_check
check (id >= 800000 and id < 900000);

alter table inh_part_10
add constraint partition_check
check (id >= 900000 and id < 1000000);


create or replace rule redirect_isert_inh_table_1
as on insert to inherited_hub_table
where new.id between 0 and 99999
do instead insert into inh_part_1 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_2
as on insert to inherited_hub_table
where new.id between 100000 and 199999
do instead insert into inh_part_2 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_3
as on insert to inherited_hub_table
where new.id between 200000 and 299999
do instead insert into inh_part_3 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_4
as on insert to inherited_hub_table
where new.id between 300000 and 399999
do instead insert into inh_part_4 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_5
as on insert to inherited_hub_table
where new.id between 400000 and 499999
do instead insert into inh_part_5 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_6
as on insert to inherited_hub_table
where new.id between 500000 and 599999
do instead insert into inh_part_3 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_7
as on insert to inherited_hub_table
where new.id between 600000 and 699999
do instead insert into inh_part_7 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_8
as on insert to inherited_hub_table
where new.id between 700000 and 799999
do instead insert into inh_part_8 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_9
as on insert to inherited_hub_table
where new.id between 800000 and 899999
do instead insert into inh_part_9 values (new.id, new.name);

create or replace rule redirect_isert_inh_table_10
as on insert to inherited_hub_table
where new.id between 900000 and 999999
do instead insert into inh_part_10 values (new.id, new.name);
