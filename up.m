function out=up(x,n)
    y=[];
    for i=1:length(x)
        y=[y x(i)];
        for j=1:n-1
            y=[y 0];
        end
    end
    out=y;
end
