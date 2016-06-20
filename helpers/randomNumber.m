function [ output_args ] = randomNumber( s, bitlength )
%RANDOM Summary of this function goes here
%   Detailed explanation goes here
    output_args = randi(2^bitlength-1, 1, s);
end

