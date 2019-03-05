
function [J, grad] = costFunctionReg(theta, X, y, lambda)
    m = length(y); % number of training examples
    
    [J, grad] = costFunction(theta, X, y);
    
    regularization = (lambda/(2*m) .* sum(theta(2:end).^2));
    J = J + regularization;
    
    regularization = (lambda/m * theta);
    grad(2:end) = grad(2:end) + regularization(2:end)';
    
end
    