
function [J, grad] = costFunction(theta, X, y)
    m = length(y); % number of training examples
    
    linear_regression = X * theta;
    hypothesis = sigmoid(linear_regression); % The sigmoid function allows the output to be between 0 and 1.
    
    if_positive_result = y;                  % Determines if the positive_cost is used
    if_negative_result = 1 - y;              % Determines if the negative_cost is used instead
    
    positive_cost = -log(hypothesis);        % Cost of the hypothesis if the expected result is 1 (0 if hypothesis = 1, inf if hypothesis = 0)
    negative_cost = -log(1 - hypothesis);    % Cost of the hypothesis if the expected result is 0 (0 if hypothesis = 0, inf if hypothesis = 1)
    errors = if_positive_result .* positive_cost + if_negative_result .* negative_cost;
    J = sum(errors) / m;
    
    grad = sum((hypothesis - y) .* X) / m;
    
end
