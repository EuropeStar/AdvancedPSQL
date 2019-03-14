\setrandom rnd_a 1 5000
\setrandom rnd_b 5001 10000
begin;
select * from clustered_table where id between rnd_a and rnd_b;
end;