from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from os import getenv

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://admin:?db1357db?@database-1.cewazgqmy3qd.eu-west-1.rds.amazonaws.com:3306/users'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.config['SECRET_KEY'] = str(getenv('SECRET_KEY'))
db = SQLAlchemy(app)

from application import routes
