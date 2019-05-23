#!/usr/bin/python
import MySQLdb

db = MySQLdb.connect(host="localhost",user="root",passwd="",db="salt")

cur = db.cursor()

cur.execute("SELECT * FROM salt_returns")

for row in cur.fetchall():
    print row[0]

db.close()
