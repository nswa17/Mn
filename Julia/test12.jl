f = open("cities.txt", "r")

#a = [split(s, ":")[2] for s in filter(x -> length(x) > 1, a)]
#a = [Int(strip(s)) for s in a]
sm = 0
for s in eachline(f)
  st = match(r"(\d+)", s)
  if st != nothing
    sm += round(Int, parse(st.match))
  end
end
println(sm)

close(f)
