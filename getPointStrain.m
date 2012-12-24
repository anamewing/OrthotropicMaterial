function PointStrain=getPointStrain(GeneralizedStrain,z)
PointStrain=[GeneralizedStrain.e0x+z*GeneralizedStrain.kx;
    GeneralizedStrain.e0y+z*GeneralizedStrain.ky;
    GeneralizedStrain.e0xy+z*GeneralizedStrain.kxy;];


end