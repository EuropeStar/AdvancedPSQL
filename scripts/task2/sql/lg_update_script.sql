begin;
update t2_logged_table
set message = message || message;
end;