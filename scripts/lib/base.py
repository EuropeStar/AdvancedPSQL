import random
import string
import psycopg2 as pg

def gen_rand_string(n_len):
    return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(n_len))

def get_connection():
    return pg.connect('postgresql://postgres:postgres@localhost:5432/db_course')


