function strain=getStrainFromStress(stress,material,theta)
%Structure stress 
%Structure material
%theta默认为0，使用弧度，顺时针转动

if nargin<3
    theta=0;
end

mainstress=getMainDirectionStress(stress,theta);
mainstrain=getMainDirectionStrainFromMainDirectionStress(mainstress,material);
strain=getStrainFromMainDirectionStrain(mainstrain,theta);

end