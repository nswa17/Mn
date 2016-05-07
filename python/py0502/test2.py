from random import normalvariate
import matplotlib.pyplot as plt

def ts(T, alpha):
    series = [0]
    for i in range(T):
        series.append(alpha*series[i] + normalvariate(0, 1))
    return series

#print(ts(100, 0.98))

plt.plot(ts(100, 0.98))
plt.show()
