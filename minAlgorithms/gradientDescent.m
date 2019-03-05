
function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
    m = length(y); 
    J_history = zeros(num_iters, 1);

    for iter = 1:num_iters
        h = X*theta;
        errors = h-y;
        directions = sum(errors.*X)/m;
        steps = alpha * directions;
        theta = theta - steps';
    
        J = computeCost(X, y, theta);
        J_history(iter) = J;
    end
end
