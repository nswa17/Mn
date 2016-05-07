using PyPlot

function ts(t, alpha)
  if t > 0
    a = ts(t-1, alpha)
    last_element = a -> alpha * a[end] + randn()
    return push!(a, last_element(a))
  else
    return [0.0]
  end
end

plot(ts(200, 0.98))
plot(ts(200, 0.8))
plot(ts(200, 0))
legend()
