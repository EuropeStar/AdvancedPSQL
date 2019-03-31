create or replace rule redirect_update_inh_table_1
as on update to inherited_hub_table
where new.id between 0 and 99999
do instead insert into inh_part_1 values (new.id, new.name);