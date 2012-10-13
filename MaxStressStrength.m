function safe=MaxStressStrength(stress,strength)
%safe if return true
%stress in main direction

safe=all([stress.sx<=strength.xt
            stress.sx>=-strength.xc
            stress.sy<=strength.yt
            stress.sy>=-strength.yc
            abs(stress.sxy)<=strength.s]);
end
        

