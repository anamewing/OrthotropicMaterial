function T=getRotateMatrix(theta)
%使用弧度，顺时针转动，使用应左乘
st=sin(theta);
ct=cos(theta);
T=[ct^2,st^2,-2*ct*st
    st^2,ct^2,2*st*ct
    st*ct,-st*ct,ct^2-st^2];
end
    