insert into clustered_table (id, name)
select generate_series, md5(generate_series::text) from generate_series(1,10000)