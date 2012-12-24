function [A,B,D]=getMultilayerStiffness(materials,theta,z,brokenFlag)
%array input
lz=size(z);
lz=lz(1);
if (length(materials)~=(lz))||(length(materials)~=(length(theta)))||(length(materials)~=(length(brokenFlag)))
    return
end

A=zeros(3);
B=zeros(3);
D=zeros(3);

for i=1:length(materials)
    [Ak,Bk,Dk]=getBoardStiffness(materials(i),theta(i),z(i,1),z(i,2),brokenFlag(i));
    A=A+Ak;
    B=B+Bk;
    D=D+Dk;
end

end