from flask_sqlalchemy import SQLAlchemy
from flask import Flask

# Create an app
app = Flask(__name__)
app.config['SECRET_KEY'] = 'key'
# Off console warnings
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
# MySQL connection: server 'db', database name 'smarket_test'
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:root@db/smarket_test'


db = SQLAlchemy(app)


class DataTest(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    value = db.Column(db.String(200))

    def __repr__(self):
        return f'my_table: {self.id}, {self.value}'


@app.route('/')
def index():
    return 'smarket home page'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='5000')
