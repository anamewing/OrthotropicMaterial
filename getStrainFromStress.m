function strain=getStrainFromStress(stress,material,T)
%Structure stress 
%Structure material
%TÄ¬ÈÏÎªeye(3)

if nargin<3
    T=eye(3);
end

S=getMaterialMatrixS(material);
ssvic=[stress.sx,stress.sy,stress.sxy].';
savic=T*S*inv(T)*ssvic;
strain=struct('eng',false,'ex',savic(1),'ey',savic(2),'exy',savic(3));
end