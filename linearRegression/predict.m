
function p = predict(theta, X)
    linear_regression = X * theta;
    hypothesis = sigmoid(linear_regression);
    p = round(hypothesis, 0); 
end
