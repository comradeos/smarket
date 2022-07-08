from market import db
from market.models import Item, User

users = User.query.all()
items = Item.query.all()

# from market.temp import *