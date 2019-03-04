\setrandom rnd_int 1 100000

begin;
insert into t2_unlogged_table (id, message, created) VALUES (:rnd_int, md5(:rnd_int::text), current_date);
end;
