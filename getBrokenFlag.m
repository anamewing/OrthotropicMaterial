function BrokenFlag=getBrokenFlag(thisBrokenResult,stress,strength,theta)
%syms Nx
BrokenFlag=0;
stress=subs(stress,thisBrokenResult);
T=getRotateMatrix(-theta);
stress=abs((T)*stress);
if stress(1)>strength.xt*0.7
    BrokenFlag=bitor(BrokenFlag,1);
end
if stress(2)>strength.yt*0.7
    BrokenFlag=bitor(BrokenFlag,2);
end
if stress(3)>strength.s*0.7
    BrokenFlag=bitor(BrokenFlag,4);
end

if BrokenFlag==0
    warning('something wrong in broken calculate');
end
end
