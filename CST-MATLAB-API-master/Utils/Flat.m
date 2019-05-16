function flatArray = Flat(matrix)

flatArray = matrix(:);

flatArray = unique(flatArray, 'rows');

end

