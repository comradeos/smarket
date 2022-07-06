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


class Item(db.Model):
    id = db.Column(db.Integer(), primary_key=True)
    name = db.Column(db.String(50), nullable=False, unique=True)
    price = db.Column(db.Integer(), nullable=False)
    barcode = db.Column(db.String(12), nullable=False)
    description = db.Column(db.String(500), nullable=False, unique=True)

    def __repr__(self):
        return f'Item {self.name}'


@app.route('/')
@app.route('/home')
def home_page():
    return render_template('home.html')


@app.route('/market')
def market_page():
    items = Item.query.all()
    return render_template('market.html', items=items)


# db.create_all()

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port='5000')
