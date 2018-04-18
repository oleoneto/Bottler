# Bottle-Autogenerator

import os
import dbconfig

SECRET_KEY = ''

DEBUG = True

if DEBUG:
    HOST = 'localhost'
    PORT = '3088'
else:
    PORT = '3081'

# Directories
BASE_DIR    = os.path.dirname(os.path.abspath(__file__))
CURR_DIR    = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

VIEWS_ROOT  = os.path.join(BASE_DIR, 'views')
STATIC_ROOT = os.path.join(BASE_DIR, 'static')
MEDIA_ROOT  = os.path.join(BASE_DIR, 'media')

STATIC_URL  = '/static/'
MEDIA_URL   = '/media/'
