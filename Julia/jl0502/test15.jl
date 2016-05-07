immutable Point
  x::Int
  y::Int
end

t = Point(10, 10)
println(t)

function norm(p::Point)
  return sqrt(p.x^2+p.y^2)
end

println(norm(Point(10, 20)))
