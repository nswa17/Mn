function factorial4(n)
  if n == 0
    return BigInt(1)
  else
    return n * factorial4(n-1)
  end
end

nCr :: Int16 -> Int16 -> BigInt
function nCr(n, r)
  return BigInt(factorial4(n)/(factorial4(n-r) * factorial4(r)))
end

get_draw :: Int16 -> Float64 -> Int16 -> Float64
get_draw(n, p, x) = Float64(nCr(n, x) * p^x * (1-p)^(n-x))
println(nCr(100, 10))
println(get_draw(5, 1/2, 1))

function binomial_rv2(n, p)
  m = 0
  for i in range(1, n)
    if p < rand()
      m += 1
    end
  end
  return m
end

function binomial_rv3(n, p)
  rands = [rand() for i in range(1, n)]
  return length(rands[rands.<p])
end

binomial_rv4 = (n, p) -> length(filter(x -> x < p, [rand() for i in range(1, n)]))
#binomial_rv3 = (n, p) -> sum(filter(_ -> 1/2 < rand(), [1]*n))
#println(binomial(5, 2))
#println(filter(prob(1/2), [1, 1]))
#println(binomial_rv2(5, 1/2))
#println(binomial_rv3(5, 1/2))
println(binomial_rv4(5, 1/2))
