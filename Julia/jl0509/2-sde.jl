#X_t+1 = AX_t + b + ∑W_t

matrix_size = 2

A = [0.8 -0.2; -0.1 0.7]
Sigma = [0.5 0.4; 0.4 0.6]
S = [1 2; 3 4]

function get_next_S(S, A, Sigma)
  return A * S * A' + Sigma * Sigma'
end

function tkm(S, A, Sigma)
  Delta = S
  i = 1
  while sum(abs(Delta) .< 1) != length(S)
    S2 = get_next_S(S, A, Sigma)
    Delta = S2 .- S
    S = S2
    i += 1
  end
  println("finished by step $i")
  return S
end

println(tkm(S, A, Sigma))
