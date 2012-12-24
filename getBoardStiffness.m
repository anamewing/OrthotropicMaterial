function [Ak,Bk,Dk]=getBoardStiffness(material,theta,z1,z2,brokenFlag)
%theta rad
%z2>z1
S=getMaterialMatrixS(material);
T=getRotateMatrix(theta);
Qk=inv(S);

if brokenFlag>0
	if brokenFlag>=4
	    Qk(3,3)=0;
	    brokenFlag=brokenFlag-4;
	end
	if brokenFlag>=2
	    Qk(:,2)=zeros(3,1);
	    Qk(2,:)=zeros(3,1)';
        Qk(3,3)=0;
        brokenFlag=brokenFlag-2;
	end
	if brokenFlag>=1
	    Qk(:,1)=zeros(3,1);
	    Qk(1,:)=zeros(3,1)';
        Qk(3,3)=0;
        brokenFlag=brokenFlag-1;
	end
end

Qk=T*Qk*(T)';

Ak=Qk*(z2-z1);
Bk=Qk/2*(z2^2-z1^2);
Dk=Qk/3*(z2^3-z1^3);