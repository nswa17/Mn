function test{T,N}(x::Array{T,N})
  return N, T, size(x)
end


println(test([1,2,3,4]))
println(test([1 2 3 4]))
println(test([1 2; 3 4]))
println(test(zeros(Int, 3, 3, 3)))

function addone(x)
  y = zeros(Int, length(x))
  for i in 1:length(x)
    y[i] = x[i] + 1
  end
  return y
end



println(addone([1,2 ,3]))
