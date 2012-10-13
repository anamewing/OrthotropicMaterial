function strain=getStrainFromStress(stress,material,theta)
%Structure stress 
%Structure material
%theta默认为0，使用弧度，顺时针转动

if nargin<3
    T=eye(3);
else
    T=getRotateMatrix(theta);
end

S=getMaterialMatrixS(material);
ssvic=[stress.sx,stress.sy,stress.sxy].';
savic=T*S*inv(T)*ssvic;
strain=struct('eng',false,'ex',savic(1),'ey',savic(2),'exy',savic(3));
end