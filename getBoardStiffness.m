function [Ak,Bk,Dk]=getBoardStiffness(material,theta,z1,z2)
%theta rad
%z2>z1
S=getMaterialMatrixS(material);
T=getRotateMatrix(theta);
Qk=T*S*inv(T);
Ak=Qk*(z2-z1);
Bk=Qk/2*(z2^2-z1^2);
Dk=Qk/3*(z2^3-z1^3);