function T=getRotateMatrix(theta)
%ʹ�û��ȣ�˳ʱ��ת����ʹ��Ӧ���
st=sin(theta);
ct=cos(theta);
T=[ct^2,st^2,-2*ct*st
    st^2,ct^2,2*st*ct
    st*ct,-st*ct,ct^2-st^2];
end
    