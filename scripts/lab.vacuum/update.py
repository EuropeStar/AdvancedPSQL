from lib.base import get_connection, gen_rand_string, get_random


def resolve():
    conn = get_connection()
    cur = conn.cursor()
    _str = gen_rand_string(10)
    sql = "UPDATE vacuum_test_table SET name = %s WHERE id = 1"
    for x in range(1000000):
        cur.execute(sql, [_str])
    cur.commit()
