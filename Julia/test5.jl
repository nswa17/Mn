n = 10000000
randnstuple = [(x, y) for (x, y) in zip(rand(n), rand(n))]

num_inside = length(filter(x -> x[1]^2 + x[2]^2 <= 1, randnstuple))
println(num_inside / n * 4)
