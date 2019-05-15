function [factor, values] = GetAntennaValues(min, max, step, base)
factor = min:step:max;

[base_rows, base_cols] = size(base);

values = zeros(length(factor), base_cols);

if base_rows == 1
    
    for i = 1:length(factor)
        values(i,:) = factor(i).*base;
    end
    
else
    
    for i = 1:length(factor)
        values(i,:) = factor(i).*base(i,:);
    end
    
end
end

