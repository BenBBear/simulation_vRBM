function prediction = makePrediction(bit, sigm, adder, n_critical, iteration, critical_scheme, model, images)
    prediction = zero(1, 10);
    critical = zeros(1, 441);
    
    switch critical_scheme
        case 'random'
            critical(randsample(randperm(441), n_critical)) = true;  % ?            
        otherwise
            error('unkown criticality scheme');
    end
    
    for iter = 1:iteration
        
        
    end
end
