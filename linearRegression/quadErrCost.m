
function J = quadErrCost(X, y, theta)
    m = length(y);
    h = X*theta;
    error = h-y;
    quaderr = error.^2;

    J = sum(quaderr)/(2*m);
end
