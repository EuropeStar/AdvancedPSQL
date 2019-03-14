#!/bin/bash

# -c 4 for insert


echo 'starting benchmark'
pgbench -n -f $1 -r -T 300 db_course
echo 'complete'
