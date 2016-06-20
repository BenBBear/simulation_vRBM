function [ model ] = make_model( type )
%MAKE_MODEL Summary of this function goes here
%   Detailed explanation goes here
model.critical_scheme = 'random';
model.bitlength = 32;
model.sigmoid = 'PLAN';
model.critical = 0;
model.iadder = 'ETAIIM';
model.variance = 'undefined';
switch type
    case 'Ab'
        model.bitlength = 2:32;       
    case 'As'
        model.sigmoid = {'PLAN', 'RAMP'};        
    case 'An'
        model.critical = [10, 100, 200, 441];
    case 'Absnv'
        error('undefined');
    case 'Absna'
        error('undefined');
    otherwise
        error('illegal type for make_model');
end

end

