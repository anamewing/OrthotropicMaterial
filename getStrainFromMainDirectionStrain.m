function strain=getStrainFromMainDirectionStrain(mainstrain,theta)
%ÄæÊ±Õë×ª¶¯theta
T=getRotateMatrix(theta);
savic=[mainstrain.ex,mainstrain.ey,mainstrain.exy].';
nsavic=(T)*savic;
strain.ex=nsavic(1);
strain.ey=nsavic(2);
strain.exy=nsavic(3);
strain.eng=mainstrain.eng;
end