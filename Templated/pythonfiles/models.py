# Bottle-Autogenerator

class ModelName(models.Model):
    def __init__(self, name, slug):
        name = name
        slug = slug

    @property
    def name(self):
        return self.name

    @property.setter
    def name(self, name):
        try:
            self.name = name
        except ValueError:
            print("Invalid name.")
