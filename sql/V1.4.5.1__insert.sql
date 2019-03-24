insert into inherited_hub_table
select floor(random() * 1000000), md5(generate_series::text)
from generate_series(1, 1000000);