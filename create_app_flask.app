#!/bin/bash

mkdir myapp
cd myapp

cat <<EOT >> app.py
from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

if __name__ == '__main__':
    app.run()
EOT

pip3 install Flask

export FLASK_APP=app.py

flask run --host=0.0.0.0
