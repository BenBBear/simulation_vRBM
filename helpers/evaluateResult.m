function [ r ] = evaluateResult( result, ground_truth )
%EVALUATERESULT Summary of this function goes here
%   Detailed explanation goes here
    r = cell(1, length(result));
    for i = 1:length(result)
        t.key = result{i}.key;
        t.rate = sum(result{i}.prediction == ground_truth)/length(ground_truth);
        r{i} = t;
    end
end

