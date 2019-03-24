create table inherited_hub_table (
  id integer,
  name varchar(50)
);

create inh_part_1 () inherits (inherited_hub_table);
create inh_part_2 () inherits (inherited_hub_table);
create inh_part_3 () inherits (inherited_hub_table);
create inh_part_4 () inherits (inherited_hub_table);
create inh_part_5 () inherits (inherited_hub_table);
create inh_part_6 () inherits (inherited_hub_table);
create inh_part_7 () inherits (inherited_hub_table);
create inh_part_8 () inherits (inherited_hub_table);
create inh_part_9 () inherits (inherited_hub_table);
create inh_part_10 () inherits (inherited_hub_table);

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