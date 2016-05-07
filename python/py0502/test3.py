from random import normalvariate
import matplotlib.pyplot as plt

ts_length = 100

#%matplotlib inline
epsilon_values = [normalvariate(0,1) for i in range(ts_length)]
plt.plot(epsilon_values)
plt.show()
