function out=down(x,n)
    y = [];
    for i=1:n:length(x)
        y=[y x(i)];
    end
    out=y
end