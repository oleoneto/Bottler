# Bottle-Autogenerator

import sqlite3

db = sqlite3.connect('db.sqlite3')

def createTables():
    Users = """
        CREATE TABLE IF NOT EXISTS Users(
        id INTEGER PRIMARY KEY,
        name VARCHAR(50),
        username REAL,
        hash TEXT
        )"""

    Songs = """
        CREATE TABLE IF NOT EXISTS Songs(
        id INTEGER PRIMARY KEY,
        title VARCHAR(50),
        artist VARCHAR(50),
        album VARCHAR(50),
        artwork VARCHAR(100),
        preview VARCHAR(100)
        )"""

    connection = db.cursor()
    db.execute(Users)
    db.execute(Songs)
    # connection.close()

def createSong(title=None, album=None, artist=None, artwork=None, preview=None):
    if title:
        connection = db.cursor()
        connection.execute("INSERT INTO Songs VALUES(null, ?, ?, ?, ?, ?)", (title, album, artist, artwork, preview))
        db.commit()

def searchSong(keyword=None):
    connection = db.cursor()
    if keyword is not None:
        query = connection.execute("SELECT * FROM Songs WHERE title LIKE ? OR artist LIKE ? OR album LIKE ?", ("%" + keyword + "%","%" + keyword + "%","%" + keyword + "%",))
    else:
        query = connection.execute("SELECT * FROM Songs")
    return query
