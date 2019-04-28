begin;
SELECT min(a) OVER(PARTITION BY b,c ORDER BY b,c) FROM table_for_btree ORDER BY c,b;
end;