function news=getMainDirectionStress(stress,theta)
%��ʱ��ת��theta�õ���Ӧ��
T=getRotateMatrix(theta);
ssvic=[stress.sx,stress.sy,stress.sxy].';
nssvic=inv(T)*ssvic;
news.sx=nssvic(1);
news.sy=nssvic(2);
news.sxy=nssvic(3);
end