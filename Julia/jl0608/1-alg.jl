using PyPlot

function hashf(args)
    return mod1(sum(args), length(args))
end

rands = [[rand(1:10) for i in 1:10] for k in 1:10]
hashed_rands = [hashf(args) for args in rands]

println(hash(rands[0]...))
