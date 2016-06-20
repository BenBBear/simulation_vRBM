function [ result ] = run_model( model, images, config )
%RUN_MODEL Summary of this function goes here
%   Detailed explanation goes here
    result = {};
    for b=config.bitlength
       for i_s = 1:length(config.sigmoid) 
            sg = config.sigmoid{i_s};
            for i_a = 1:length(config.iadder)
                iadder = config.iadder{i_a};
                for n_c = config.critical
                    r.key = makeKey(b, sg, iadder, n_c);
                    r.prediction = makePrediction(b, sg, iadder, n_c, config.iteration, critical_scheme,  model, images);
                end
            end
       end
    end
    
    
    %%% currently variance is not supported
    
    function key = makeKey(bit, sigm, adder, n_critical)
        key = sprintf('%dbit-%s-%s-%dn',bit, sigm, adder, n_critical);
    end

end

