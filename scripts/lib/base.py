import random
import string
import psycopg2 as pg

def gen_rand_string(n_len):
    return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(n_len))

def get_connection():
    return pg.connect('postgresql://postgres:postgres@localhost:5432/db_course')

def get_random():
    return random

def build_query_string(cur, data, prefix=None):
    """
    Build query string with inserted args
    :param cur: cursor object
    :param data: iterable of data lists
    :param prefix: prefix string (e.g. INSERT INTO ...)
    :return: string
    """
    return (prefix or "") + ','.join(
        cur.mogrify('(%s)' % (
            ','.join(["%s"] * len(x),)
        ), x).decode('utf-8') for x in data
    )
