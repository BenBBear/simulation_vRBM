function [ A ] = bitThreshold( A, bitlength )
%BITTHRESHOLD Summary of this function goes here
%   Detailed explanation goes here
  t = (2^bitlength)-1;
  A(A > t) = t; 
end

