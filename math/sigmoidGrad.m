
function g = sigmoidGrad(z)
    g = sigmoid(z) .* (1-sigmoid(z));    
end
