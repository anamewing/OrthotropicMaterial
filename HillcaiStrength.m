function safe=HillcaiStrength(stress,strength)
%safe if return true
%stress in main direction
%use xt,yt as x,y

s1=stress.sx;
s2=stress.sy;
s12=stress.sxy;
X=strength.xt;
Y=strength.yt;
S=strength.s;
safe=(s1^2/X^2-s1*s2/X^2+s2^2/Y^2+s12^2/S^2<1);
end