
function [X_norm, mu, sigma] = normalize(X)
    mu = mean(X);
    centered = X - mu;
    sigma = std(centered);
    X_norm = centered./sigma;
end
