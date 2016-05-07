function get_arg_1(args...)
  if length(args) > 1
    return args[1]
  else
    return false
  end
end

println(get_arg_1(1,2,3))
println(get_arg_1([21,23]...))
println(get_arg_1([3:10;]...))
