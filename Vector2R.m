function[R]= Vector2R(vector)
%UNTITLED此处显示有关此函数的摘要
%此处显示详细说明
theta=norm(vector);
vector=vector/theta;
sizeVec=size(vector,2);
if size(vector,1)>size(vector,2)
sizeVec=size(vector,1);
vector=vector';
end
R=eye(sizeVec)*cos(theta)+(1-cos(theta))*vector'*vector+sin(theta)*...
[o -vector(3)vector(2);
vector(3)0 -vector(1);
-vector(2)vector(1)o];
det(R)
end
