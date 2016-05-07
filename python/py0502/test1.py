from random import normalvariate
from numpy.random import randn
#import matplotlib.pyplot as plt
print(randn(10))
a = 23
print("hello, %{0:2d}".format(a))
ts_length = 100
epsilon_values = [normalvariate(0, 1) for i in range(ts_length)]   # An empty list

#plt.plot(epsilon_values, 'b-')
#plt.show()
