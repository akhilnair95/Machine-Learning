function data = modify(data)

X = data(:, [1, 2]); y = data(:, 3);

m = length(y);

for i= 1:m
	if(X(i,2) > 0.25 && y(i) == 1)
		data(i,3) = 0;
	end
	
	if(X(i,2) <= 0.25 && y(i) == 1)
		data(i,3) = 1;
	end

	if(X(i,2) > 0 && y(i) == 0)
		data(i,3) = 2;
	end
	
	if(X(i,2) <= 0 && y(i) == 0)
		data(i,3) = 3;
	end
end

end;
