begin;
update t2_unlogged_table
set message = message || message;
end;