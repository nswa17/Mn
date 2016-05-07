binomial_rv4 = (n, p) -> length(filter(x -> x < p, [rand() for i in range(1, n)]))

head = 1/2 < rand() ? true : false

function pay()
  s = 0
  for i in range(1, 10)
    1/2 < rand() ? s += 1 : s = 0
  end
  s >= 3 ? true : false
end

#println(head)
println(pay())

function ts(t, alpha)
  if t > 0
    a = ts(t-1, alpha)
    return push!(a, alpha*a[end] + randn())
  else
    return [0.0]
  end
end

function ts2(T, alpha)
  series = zeros(T+1)
  for i in 1:T
    series[i+1] = alpha * series[i] + randn()
  end
  return series
end

println(ts(200, 0.9))
println(ts2(200, 0.9))
