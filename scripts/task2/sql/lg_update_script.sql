/setrandom rint 1 10000

begin;
update t2_logged_table set message = md5(:rint::text)
end;
