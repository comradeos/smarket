
from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

# Create an app
app = Flask(__name__)
app.config['SECRET_KEY'] = 'key'
# Off console warnings
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# MySQL connection: server 'db', database name 'smarket_data'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:root@db/smarket_data'

db = SQLAlchemy(app)

from market import routes