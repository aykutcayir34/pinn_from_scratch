using Optimisers
using Zygote
using Random
using Plots
using Distributions

SEED = 42
N_collocation_points = 50
HIDDEN_DEPTH = 100
LEARNING_RATE = 1e-3
N_EPOCHS = 20_000
BC_LOSS_WEIGHT = 100.0

rhs_function(x) = sin(π * x)
analytical_solution(x) = sin(π * x) / π^2

rng = MersenneTwister(SEED)
sigmoid(x) = 1.0 / (1.0 + exp(-x))

uniform_limit = sqrt(6 / (1 + HIDDEN_DEPTH))
