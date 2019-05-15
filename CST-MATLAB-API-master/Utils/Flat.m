function flatArray = Flat(matrix)

[rows,cols] = size(matrix);

flatArray = zeros(rows*cols, 1);

k=1;

for i=1:rows
    for j=1:cols
        flatArray(k) = matrix(i,j);
        k=k+1;
    end
    k=k+1;
end
end

