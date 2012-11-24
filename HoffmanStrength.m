function safe=HoffmanStrength(stress,strength)
%safe if return true
%stress in main direction

s1=stress.sx;
s2=stress.sy;
s12=stress.sxy;
Xt=strength.xt;
Yt=strength.yt;
Xc=strength.xc;
Yc=strength.yc;
S=strength.s;

safe=((s1^2-s1*s2)/Xt/Xc+s2^2/Yt/Yc+(Xc-Xt)*s1/Xt/Xc+(Yc-Yt)*s2/Yt/Yc+s12^2/S^2<1);
end