function GeneralizedStrain=getGeneralizedStrainForMultilayer(A,B,D,load)
Q=[A,B;B,D];
es=inv(Q)*[load.Nx;load.Ny;load.Nxy;load.Mx;load.My;load.Mxy];
GeneralizedStrain=struct('e0x',es(1,:),'e0y',es(2,:),'e0xy',es(3,:),'kx',es(4,:),'ky',es(5,:),'kxy',es(6,:));
end