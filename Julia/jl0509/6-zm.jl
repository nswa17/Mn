using PyPlot
using Distributions

function plot_histogram(distribution, n)
    epsilon_values = rand(distribution, n)  # n draws from distribution
    plt[:hist](epsilon_values)
end

lp = Laplace()
lg = Logistic()
cc = Cauchy()
prt = Pareto()
#plot_histogram(lp, 500)
#plot_histogram(lg, 500)
#plot_histogram(cc, 500)
plot_histogram(prt, 100)
legend()
