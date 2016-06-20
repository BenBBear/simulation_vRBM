function [ C ] = add( A, B, bitlength, varargin )
%ADD Summary of this function goes here
%   Detailed explanation goes here
  if isempty(varargin) 
      type = 'EXACT';
  else
      type = varargin{1};
  end
  
  switch type
      case 'EXACT'
          C = EXACT(A, B, bitlength);
      case 'ETAIIM'
          C = ETAIIM(A, B, bitlength);
          
      otherwise
          error(sprintf('Adder type %s not supported', type));
  end

end

