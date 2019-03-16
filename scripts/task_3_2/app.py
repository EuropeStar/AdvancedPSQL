from lib.base import get_random, get_connection, gen_rand_string, build_query_string

TABLE_NAME_1 = 'f_table_1'
TABLE_NAME_2 = 'f_table_2'
TABLE_NAME_3 = 'f_table_3'

TIMES = 10 * 1000

conn = get_connection()

def get_data_batch():
    return get_random().randint(0, 300), gen_rand_string(20)


def insert_into(table_name, _id, _name):
    with conn.cursor() as c:
        sql = build_query_string(c, [(_id, _name)], "INSERT INTO %s (id, name) VALUES " % table_name)
        c.execute(sql)
        conn.commit()


def resolve():
    for i in range(TIMES):
        _id, name = get_data_batch()
        if 0 <= _id < 100:
            insert_into(TABLE_NAME_1, _id, name)
        elif 100 <= _id < 200:
            insert_into(TABLE_NAME_2, _id, name)
        elif 200 <= _id < 300:
            insert_into(TABLE_NAME_3, _id, name)
