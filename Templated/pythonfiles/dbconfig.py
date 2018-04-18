# Bottle-Autogenerator

import sqlite3

db = sqlite3.connect('db.sqlite3')
connection = db.cursor()

def create_table():
    connection('CREATE TABLE IF NOT EXIST Users(name TEXT, age REAL)')
