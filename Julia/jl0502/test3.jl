#using PyPlot

ts_length = 10000
n = 1000
stds = []
means = []
for i in range(1, n)
  data = Array(Float64, ts_length)
  data = randn(ts_length)
  #epsilon_values = Array(Float64, ts_length)
  #plot(data, "b-")

  #println("Hello")
  #for i in 1:ts_length
    #println("Hi")
    #println(data[i])
  #end

  push!(stds, std(data))
  push!(means, mean(data))
end

print("mean in means: ")
println(mean(means))
print("mean in stds: ")
println(mean(stds))
