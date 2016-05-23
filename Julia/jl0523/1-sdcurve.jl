using PyPlot
#assumption the price each wants to sell/buy is determined by Uniform Distribution

Num_suppliers = 20
Num_consumers = 20

type Consumer
  id::Int
  u::Float64
  p::Float64
  buy::Function
  bought::Bool
  function Consumer(id)
    C = new()
    C.id = id
    C.u = 0
    C.p = rand()
    C.bought = false
    return C
  end
end

whether_to_buy(c, p) = c.p >= p
function buy(c, p)
  if whether_to_buy(c, p)
    #c.bought = true
    c.u += c.p - p
  end
end

all_u_of_eles(eles) = sum(map(e -> e.u, eles))

type Supplier
  id::Int
  p::Float64
  u::Float64
  sell::Function
  sold::Bool
  function Supplier(id)
    S = new()
    S.id = id
    S.u = 0
    S.p = rand()
    S.sold = false
    return S
  end
end

function interact(c, s)
  c.p > s.p ? true : false
end

whether_to_sell(s, p) = s.p <= p
function sell(s, p)
  if whether_to_sell(s, p)
    #s.sold = true
    s.u += p - s.p
  end
end

function calc_num(whether, eles, ps)
  e4p = []
  for p in ps
    push!(e4p, sum(map(e -> whether(e, p), eles)))
  end
  return e4p
end

function find_equilibrium(ps, supplies, demands)
  i = indmin(map(abs, supplies .- demands))
  return ps[i], (supplies[i] + demands[i])/2
end

function trade(p_s, p_c, ss, cs)
  map(s -> sell(s, p_s), ss)
  map(c -> buy(c, p_c), cs)
end

function show_data(x, p_s, p_c, ss, cs)
  println("under free trade")
  println("suppliers u: $(all_u_of_eles(ss))")
  println("consumers u: $(all_u_of_eles(cs))")
  println("all u: $(all_u_of_eles(ss) + all_u_of_eles(cs))")
  println("traded amount: $x")
  println("price for consumers: $p_c, price for suppliers: $p_s")
end

calc_supply(ss, ps) = calc_num(whether_to_sell, ss, ps)
calc_demand(cs, ps) = calc_num(whether_to_buy, cs, ps)

cs = [Consumer(i) for i in 1:Num_consumers]
ss = [Supplier(i) for i in 1:Num_consumers]

println(ss)
println(cs)

ps = linspace(0, 1, 100)
supplies = calc_supply(ss, ps)
demands = calc_demand(cs, ps)
plot(supplies, ps)
plot(demands, ps)
p, x = find_equilibrium(ps, supplies, demands)

trade(p, p, ss, cs)
show_data(x, p, p, ss, cs)
"""
println("under taxation")
println("suppliers u: $(all_u_of_eles(ss))")
println("consumers u: $(all_u_of_eles(cs))")
println("all u: $(all_u_of_eles(ss) + all_u_of_eles(cs))")
"""
