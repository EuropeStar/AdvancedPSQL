\set rnd_a random(1, 5000)
\set rnd_b random(5001, 10000)
begin;
select * from clustered_table where id between :rnd_a and :rnd_b;
end;
