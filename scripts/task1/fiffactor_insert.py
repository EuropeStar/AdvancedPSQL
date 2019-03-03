from lib.base import gen_rand_string, get_connection, get_random, build_query_string
from datetime import date

N = 10 * 1000 # Number of rows

def insert_into_table(curs, table_name):
    data = []
    for i in range(N):
        data.append(
            (
                str(get_random().randint(0, 10)),
                str(gen_rand_string(50)),
                str(date.today())
            )
        )
    sql = build_query_string(curs, data, prefix="INSERT INTO %s (i, message, created) VALUES " % (table_name,))
    curs.execute(sql)


def resolve():
    con = get_connection()
    curs = con.cursor()
    for x in ('fillfacor_50', 'fillfacor_75', 'fillfacor_90', 'fillfacor_100'):
        insert_into_table(curs, x)
    con.commit()
