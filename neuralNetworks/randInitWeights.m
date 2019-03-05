
function W = randInitWeights(L_in, L_out)
    %epsilon_init = sqrt(6) / sqrt(L_in + L_out +1);
    epsilon_init = 0.12;
    W = rand(L_out, 1 + L_in) * 2 * epsilon_init - epsilon_init;
end
    