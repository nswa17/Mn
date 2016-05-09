factorial2 = n -> n == 1 ? 1 : n * factorial2(n-1)
binomial2 = (n, p) -> sum(p .> rand(n))
pi2 = sum([x^2 + y^2 <= 1 for (x, y) in zip(rand(10000), rand(10000))])/10000*4

function pay()
  s = 0
  for i in 1:10
    1/2 > rand() ? s += 1 : s = 0
    s >= 3 && return true
  end
  return false
end


#println(pi2)
#println(pay())
