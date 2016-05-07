f = open("graph.txt", "r")

#conditions = Array(Any, 100)
d = []
for l in readlines(f)
  code = [strip(x) for x in split(l, ",")]
  code2 = []
  for y in code[2:end]
    zs = split(y)
    println(zs)
    if length(zs) > 1
      push!(code2, [zs[1], parse(Float64, zs[2])])
    end
    #code2 = [split(y) for y in code[2:end]]
  end
  push!(d, (code[1], code2))
end

println(d)
close(f)
