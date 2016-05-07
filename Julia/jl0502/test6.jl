#factorial

function factorial2(n)
  if n == 0
    return 1
  else
    return n * factorial2(n-1)
  end
end

function factorial3(n)
  m = 1
  for i in range(1, n)
    m *= i
  end
  return m
end

factorial4:: Int16 -> BigInt
function factorial4(n)
  if n == 0
    return BigInt(1)
  else
    return n * factorial4(n-1)
  end
end

println(factorial2(23))
println(factorial3(30))
println(factorial4(30))
