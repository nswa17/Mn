function get_data()
  d = []
  open("graph.txt", "r") do f
    #conditions = Array(Any, 100)
    for l in readlines(f)
      code = [strip(x) for x in split(l, ",")]
      code2 = []
      for y in code[2:end]
        zs = split(y)
        if length(zs) > 1
          push!(code2, [zs[1], parse(Float64, zs[2])])
        end
        #code2 = [split(y) for y in code[2:end]]
      end
      push!(d, [code[1], code2])
    end
  end
  return d
end

get_nums_from_str(str) = parse(Int, match(r"([0-9]+)", str).captures[1])


function data_rev!(data)
  for row in data
    row[1] = get_nums_from_str(row[1]) + 1
    #println(row[2])
    if length(row) != 1
      for el in row[2:end]
        el[1] = get_nums_from_str(el[1]) + 1
      end
    end
  end
end

#println(J0)

function set_C(data)
  #println(data)
  C = zeros(100, 100)
  for row in data
    a = row[1]
    if length(row) != 1
      for list in row[2:end]
        b = list[1]
        c = list[2]
        #println(a, b)
        C[a, b] = c
        C[b, a] = c
      end
    end
  end
  return C
end

function get_next_J(J, C)
  new_J = deepcopy(J)
  for i in 1:length(J)
    available_js = filter(j -> C[i, j] != 0, 1:length(J))
    #println(available_js)
    #println([(C[i, j] + J[j]) for j in available_js]...)
    #println([C[i, j] for j in available_js])
    #println([J[j] for j in available_js])
    new_J[i] = minimum([C[i, j] + J[j] for j in available_js])
    #println(minimum([C[i, j] + J[j] for j in available_js]))
  end
  #println(new_J-J)
  return new_J
end
#println("hi")

data = get_data()
data_rev!(data)
#println(data)
J0 = ones(Float64, 100) .* 5000
J0[100] = 0
C = set_C(data)

J2, J = get_next_J(J0, C), J0
i = 1
while J != J2
  #println(J2-J)
  J2, J = get_next_J(J2, C), J2
  i += 1
  #println(i)
  if i == 50000
    break
  end
end

println("finished by step $i")
println(J2)
#function data2matrix(data)
