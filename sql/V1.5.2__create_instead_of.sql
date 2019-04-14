create table table_for_inst_of (
  type_name varchar(50),
  value integer
);

create view table_for_inst_view as
  select type_name, sum(value)
  from table_for_inst_of
  group by type_name;


create or replace function fnc_trg_instead_of()
returns trigger
language plpgsql
as $BODY$
  BEGIN
    if tg_op = 'INSERT' then
      insert into table_for_inst_of values (NEW.type_name, NEW.value);
    end if;
    return NEW;
  END;
$BODY$;


create trigger trg_instead_of_dml
  instead of insert on table_for_inst__view
for each row
execute function fnc_trg_instead_of();


insert into table_for_inst_of
select 'A', generate_series from generate_series(20);

insert into table_for_inst_of
select 'B', generate_series from generate_series(40);

insert into table_for_inst_of
select 'C', generate_series from generate_series(10);

insert into table_for_inst_of
select 'D', generate_series from generate_series(30);