function  reportRate( type, result )
%REPORTRATE Summary of this function goes here
%   Detailed explanation goes here
    sprintf('Test %s: \n', type);
    for i = 1:length(result)        
        sprintf('     %s, rate = %f\n', result{i}.key, result{i}.rate);
    end
    
end

