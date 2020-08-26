function [vector]= R2Vector(R)
%UNTITLED此处显示有关此函数的摘要
%此处显示详细说明
theta=acos((trace(R)-1)/2);
vector_M=((R-R')/2)/sin(theta);
vector=[vector_M(3,2),vector_M(1,3),vector_M(2,1)]
end
