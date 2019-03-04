#!/bin/bash

echo 'starting benchmark'
pgbench -n -f $1 -c 4 -r -T 300 db_course
echo 'complete'
