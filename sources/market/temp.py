from market import db
from market.models import Item, User
from random import randint as ran

users = User.query.all()
items = Item.query.all()

# from market.temp import *

def go():
    for i in range(11,20):
        i = Item(name=f"New Item #{i}", price=ran(5,1000), barcode=f"{ran(111111111111,999999999999)}", description=f"description # {i}")
        db.session.add(i)
        db.session.commit()