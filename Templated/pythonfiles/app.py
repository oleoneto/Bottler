# Bottle-Autogenerator

from settings import *
from bottle import default_app, route, post, get, template, run, static_file, request, response
from sqlalchemy import create_engine, Column, Integer, Sequence, String
from sqlalchemy.ext.declarative import declarative_base

# ----- STATIC FILES ----------
@route('/static/<filepath:path>')
def server_static(filepath):
    return static_file(filepath, root=STATIC_ROOT)

@route('/media/<filepath:path>')
def server_media(filepath):
    return static_file(filepath, root=MEDIA_ROOT)

@route('/download/<filename:path>')
def download(filename):
    return static_file(filename, root=STATIC_ROOT, download=filename)


# --- MAIN VIEWS --------------
@route('/')
def index():
    return template("index.html")

@route('/about')
def about():
    return template("about.html")

@route('/music')
def music():
    return template('music.html')


# --- LOGIN --------
# This is equivalent to:
# @route('/login', method='GET')
@get('/login')
def login():
    return template('login.html')

# This is equivalent to:
# @route('/login', method='POST')
@post('/login')
def do_login():
    username = request.forms.get('username')
    password = request.forms.get('password')
    if check_login(username, password):
        return "<p>Your login information was correct.</p>"
    else:
        return "<p>Login failed.</p>"

# Simple login implementation.
def check_login(username, password):
    if username == "user" and password == "password":
        return True
    else:
        return False




# ---------------------------------------------------
# ---------------------------------------------------
# ---------------------------------------------------
# ---------------------------------------------------


application = default_app()
run(debug=DEBUG, reloader=True, host=HOST, port=PORT)
