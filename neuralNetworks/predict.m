
function p = predict(Theta1, Theta2, X)
    m = size(X, 1);
    num_labels = size(Theta2, 1);
    p = zeros(size(X, 1), 1);
    
    layer1 = X;
    layer1 = [ones(size(layer1, 1), 1) layer1];
    
    layer2 = sigmoid(layer1*Theta1');
    layer2 = [ones(size(layer2, 1), 1) layer2];
    
    layer3 = sigmoid(layer2*Theta2');
    
    [values, indexes] = max(layer3, [], 2);
    p = indexes;
    
end    
