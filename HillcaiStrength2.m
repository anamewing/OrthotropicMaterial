function val=HillcaiStrength(stress,strength,theta)
%safe if return true
%use xt,yt as x,y

stress=getRotateMatrix(-theta)*stress;
s1=stress(1);
s2=stress(2);
s12=stress(3);
X=strength.xt;
Y=strength.yt;
S=strength.s;
val=(s1^2/X^2-s1*s2/X^2+s2^2/Y^2+s12^2/S^2-1);
end