using PyPlot
ip = (x, y) -> sum([x_i * y_i for (x_i, y_i) in zip(x, y)])
ct = length(filter(x -> x % 2 == 0, [0:99;]))
pairs = [(2, 5), (4, 2), (9, 8), (12, 10)]
ct2 = length(filter(x -> x[1] % 2 == 0 && x[2] % 2 == 0, pairs))
ct3 = sum([(x % 2 == 0) & (y % 2 == 0) for (x, y) in pairs])
p = (x, coeff) -> sum([a_i * x^(i-1) for (i, a_i) in enumerate(coeff)])
ct4 = str -> sum([a == A for (a, A) in zip(str, uppercase(str))])
isin = (seq_a, seq_b) -> length(seq_a) == sum([in(a, seq_b) for a in seq_a])

function linapprox(f, a, b, n, x)
  delta = (b-a)/n
  points = [a + delta*i for i in 0:n]
  fs = map(f, points)
  m = round(Int, div((x-a), delta))

  plot(points, fs)

  return fs[m] + (fs[m+1]-fs[m])/delta * (x - delta*m)
end

println(ip([1,2], [2,1]))
println(ct)
println(ct2)
println(ct3)
println(p(1, [1, 1, 0]))
println(ct4("Hello"))
println(isin([2:10;], [0:10;]))
println(linapprox(x -> x^2, 0, 1, 5, 0.39))
