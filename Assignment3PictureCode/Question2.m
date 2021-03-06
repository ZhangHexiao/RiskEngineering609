
clc;
clear all;
u1 = [0.269082,0.472640,0.422864,0.467299,0.415784];
z1 = norminv(u1,0,1);
Y1 = 0.001208 + (1.2*10^-7)^0.5*z1;

u2 = [0.523667,0.243629,0.741569,0.408673,0.021790];
z2 = norminv(u2,0,1);
W = exp(4+1.6*z2);

u3 = [0.547472,0.749779,0.681600,0.140538,0.888607];
z3 = norminv(u3,0,1);
S1 = 4.75+ 1.2*z3;

u4 = [0.105136,0.067202,0.864772,0.363628,0.863948];
n = (u4+1)/50;

T = [-0.0001667,1;1,-0.0001667]
Generized = [Y1;S1]
inverseGenerized = T*[Y1;S1]


for i=1:5
X(i) = 1.59*2.5^0.980*inverseGenerized(1,i)^0.055*inverseGenerized(2,i)^0.105*n(i)^(-0.210)*W(i)^(-0.240);
end
X
E = mean(X)
Y= X.^2;
V=(sum(Y) - 5*E^2)/4