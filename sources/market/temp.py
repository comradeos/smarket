from market import db
from market.models import Item, User
from random import randint as ran

users = User.query.all()
items = Item.query.all()

# from market.temp import *
