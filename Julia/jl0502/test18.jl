type Point2
  x::Int64
  y::Int64
  #z = 3
end

p = Point2(1, 2)
println(p.x)
p.x += 3
p.y += 2
println(p)
