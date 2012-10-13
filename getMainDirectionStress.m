function news=getMainDirectionStress(stress,theta)
%逆时针转动theta得到主应力
T=getRotateMatrix(theta);
ssvic=[stress.sx,stress.sy,stress.sxy].';
nssvic=inv(T)*ssvic;
news.sx=nssvic(1);
news.sy=nssvic(2);
news.sxy=nssvic(3);
end