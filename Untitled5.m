% Problem 10.3.3

load handel.mat;
inter = [0,1];
n = 2^14;
m = n/2;
dftfilter([0 1],y,m,n,n);