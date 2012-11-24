function strain=getStrainFromStress(stress,material,theta)
%Structure stress 
%Structure material
%thetaĬ��Ϊ0��ʹ�û��ȣ�˳ʱ��ת��

if nargin<3
    theta=0;
end

mainstress=getMainDirectionStress(stress,theta);
mainstrain=getMainDirectionStrainFromMainDirectionStress(mainstress,material);
strain=getStrainFromMainDirectionStrain(mainstrain,theta);

end