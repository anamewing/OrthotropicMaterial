function plotBroken(BrokenResult,exAfterBroken,exBeforeBroken)
hold on

xlabel('\epsilon_x')
ylabel('N_x')

for i=1:length(BrokenResult)-1
    plot([exAfterBroken(i),exBeforeBroken(i)],[BrokenResult(i),BrokenResult(i+1)],'-')
    plot(exBeforeBroken(i),BrokenResult(i+1),'s')
    plot(exAfterBroken(i),BrokenResult(i),'*')
    %arrow([exAfterBroken(i),BrokenResult(i)],[exBeforeBroken(i),BrokenResult(i+1)])
end

end
