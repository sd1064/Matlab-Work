x = [1 3 5 10 15 20 25];

for i = 1:numel(x)
    my_mlp=feedforwardnet(i);
    my_mlp=train(my_mlp,Xfit,Yfit);
    y=sim(my_mlp_1,Xfit);
end


