function strain=getMainDirectionStrainFromMainDirectionStress(stress,material)

S=getMaterialMatrixS(material);
ssvic=[stress.sx,stress.sy,stress.sxy].';
savic=S*ssvic;
strain=struct('eng',false,'ex',savic(1),'ey',savic(2),'exy',savic(3));
end