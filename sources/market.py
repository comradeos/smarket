from flask_sqlalchemy import SQLAlchemy
from flask import Flask, render_template

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
@app.route('/home')
def home_page():
    return render_template('home.html')


@app.route('/market')
def market_page():
    items = [
        {'id': 1, 'name': 'Phone', 'barcode': '893212299897', 'price': 500},
        {'id': 2, 'name': 'Laptop', 'barcode': '123985473165', 'price': 900},
        {'id': 3, 'name': 'Keyboard', 'barcode': '231985128446', 'price': 150}
    ]
    return render_template('market.html', items=items)


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='5000')
