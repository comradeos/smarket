class Item(db.Model):
    id = db.Column(db.Integer(), primary_key=True)
    name = db.Column(db.String(50), nullable=False, unique=True)
    price = db.Column(db.Integer(), nullable=False)
    barcode = db.Column(db.String(12), nullable=False)
    description = db.Column(db.String(500), nullable=False, unique=True)

    def __repr__(self):
        return f'Item {self.name}'
