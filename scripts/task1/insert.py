import psycopg2 as pg
import string
import random

connection = pg.connect('postgresql://postgres:postgres@localhost:5432/db_course')
cursor = connection.cursor()

def gen_rand_string(n_len):
    return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(n_len))


def _main(table_name):
    str_list = []
    for i in range(100):
        str_list.append((gen_rand_string(3000),))
    sql = ('INSERT INTO %s (message) VALUES (%%s)') % (table_name,)
    cursor.executemany(sql, str_list)
    connection.commit()

print(__name__)
#if __name__ == "__main__":
#    for name in ['toast_plain', 'toast_extended', 'toast_external', 'toast_main']:
#        _main(name)

connection.close()

