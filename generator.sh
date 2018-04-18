#!/bin/bash
# Bottle-Autogenerator
# Requirements: Assumes Python3.6, PIP, Django 2.0.0, and Git
# A script that automates the creation of a bottle app.
# Give this file `755` permissions in order to be able to run it.
# Usage: ./generator.sh PROJECT_NAME


CUR_DIR=$PWD
SITE=$1

# ----------------------------------------
# ----------------------------------------
# ----------------------------------------

print_usage(){
  echo "usage: newbottle [appname]"
  echo "       newbottle -h"
  echo "       newbottle -st"
}

print_help(){
  echo "newbottle: Generates a bottle app directory with database, static files, views, and more."
  echo "           Run newbottle -st to see a sample directory structure."
  print_usage
}

# ----------------------------------------
# ----------------------------------------
# ----------------------------------------

make_project(){
    cp -r $CUR_DIR/Templated/media* $PWD
    cp -r $CUR_DIR/Templated/static* $PWD
    cp -r $CUR_DIR/Templated/views* $PWD
    cp -r $CUR_DIR/Templated/pythonfiles/* $PWD
    echo "Copied media, static, and views to $PWD"
    echo ""
}

make_requirements(){
    cp $CUR_DIR/Templated/requirements.txt $PWD
    pip install -r requirements.txt
}

make_git_repo(){
  echo "Initializing git..."
  # git init
  # git add *

  # Uncomment this if you want to commit the repository
  # git commit -m "Initial commit"
}

run_server(){
  echo "Running server."
  python3.6 app.py
}

# ----------------------------------------
# ----------------------------------------
# ----------------------------------------

if [ "$SITE" ]; then

  if [ "$SITE" = "-h" ]; then
    print_help
  elif [ "$SITE" = "-st" ]; then
    print_structure
  else

    # Make a directory
    mkdir -p $SITE

    # Enter the directory
    cd $SITE

    make_requirements
    make_project
    make_git_repo
    run_server

    echo "$SITE created."
  fi
else
  print_usage
fi
