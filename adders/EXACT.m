function [ C ] = EXACT( A, B, bitlength )
%EXACT Summary of this function goes here
%   Detailed explanation goes here
    C = bitThreshold(A + B, bitlength);
end

