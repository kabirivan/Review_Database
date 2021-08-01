#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sun Aug  1 12:07:15 2021

@author: xavieraguas
"""

import sqlalchemy as db


DBUSER = 'postgres'
DBPASS = 'ivan'
DBHOST = 'localhost'
DBPORT = '5432'
DBNAME = 'test'



engine = db.create_engine('postgresql+psycopg2://{user}:{passwd}@{host}:{port}/{db}'.format(user=DBUSER, passwd=DBPASS, host=DBHOST, port=DBPORT, db=DBNAME))
connection = engine.connect()
metadata = db.MetaData()

# print(engine.tables_name())

innovation_table =  db.Table('iniciativas', metadata, autoload=True, autoload_with=engine)
print(innovation_table.columns.keys())
print(repr(metadata.tables['iniciativas']))