factorial5 = n -> reduce(*, [1:n;])
println(factorial5(5))

function get_pi(n)
  s = 0
  for (x, y) in zip(rand(n), rand(n))
    if x^2 + y^2 <= 1
      s += 1
    end
  end
  return s / n * 4
end

get_pi2 = n -> sum([x^2 + y^2 <= 1 ? 1 : 0 for (x, y) in zip(rand(n), rand(n))])/n*4
get_pi3 = n -> sum([x^2 + y^2 <= 1 ? 1 : 0 for x in rand(n), y in rand(n)])/n*4

pis = [get_pi2(10000) for i in range(1, 100)]
println(mean(pis))
