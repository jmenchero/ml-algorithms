
function p = predictOneVsAll(all_theta, X)
    m = size(X, 1);
    num_labels = size(all_theta, 1);
    
    p = zeros(size(X, 1), 1);
    
    X = [ones(m, 1) X];
    
    linear_regression = X * all_theta';
    hypothesis = sigmoid(linear_regression);
    [values, indexes] = max(hypothesis, [], 2);
    p = indexes;
end
