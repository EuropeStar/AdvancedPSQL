import psycopg2
from lib.base import gen_rand_string
from lib.base import get_connection

def resolve():
    print(gen_rand_string(20))
