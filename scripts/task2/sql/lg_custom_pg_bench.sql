\setrandom rndint 1 100000

begin;
insert into t2_logged_table (id, message, created) VALUES (:rndint, md5(:rndint::text), current_date);
end;
