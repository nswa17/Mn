import math

class Polynomial:
    def __init__(self, coefficients):
        self.coefficients = coefficients

    def __call__(self, x, diff=0):
        return sum([math.factorial(i+diff)/math.factorial(i) * a_i * x**i for i, a_i in enumerate(self.coefficients[diff:])])

a = Polynomial([2, 1, 1, 1])
print(a(4, 2))
