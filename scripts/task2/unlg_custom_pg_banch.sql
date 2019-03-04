\set rnd_int random(0, 100000)

begin;
insert into t2_unlogged_table (id, message, created) VALUES (:rnd_int, md5(:rnd_int::text), current_date);
end;