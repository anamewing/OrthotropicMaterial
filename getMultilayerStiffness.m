function [A,B,D]=getMultilayerStiffness(materials,theta,z)
%array input

if (length(materials)~=(length(z)-1))||(length(materials)~=(length(theta)))
    return
end

A=zeros(3);
B=zeros(3);
D=zeros(3);

for i=1:length(materials)
    [Ak,Bk,Dk]=getBoardStiffness(materials(i),theta(i),z(i),z(i+1));
    A=A+Ak;
    B=B+Bk;
    D=D+Dk;
end

end