% Problem 10.2.3

clear
clc

t = [0/8 1/8 2/8 3/8 4/8 5/8 6/8 7/8];
x = exp(t);

y = fft(x)/sqrt(8);
a = real(y);
b = imag(y);
p = (a(1)/sqrt(8)) + (2/sqrt(8)) * [a(2)*cos(2*1*pi*t) - b(2)*sin(2*1*pi*t) + a(3)*cos(2*2*pi*t) - b(3)*sin(2*2*pi*t) + a(4)*cos(2*3*pi*t) - b(4)*sin(2*3*pi*t)] + (a(5)/sqrt(8)) * cos(8*pi*t);

plot(t,x);
hold on
plot(t,x,'*');
hold on
plot(t,p);
hold off

% Problem 10.2.4

% Part 1

n = 16;
j = 0:1:15;
t1 = j/16;

x1 = exp(t1);

y1 = fft(x1)/sqrt(n);
a1 = real(y1);
b1 = imag(y1);

sumiqua = 0;
for k = 1:7
sumiqua = sumiqua + a1(k+1)*cos(2*k*pi*t1) - b1(k+1)*sin(2*k*pi*t1);
end
p1 = (a1(1)/sqrt(n)) + (2/sqrt(n))*sumiqua + (a1(9)/sqrt(n))*cos(n*pi*t1);

figure
plot(t1,x1);
hold on
plot(t1,x1,'*');
hold on
plot(t1,p1);
hold off

% Part 2

n1 = 32;
j1 = 0:1:n1-1;
t2 = j1/n1;

x3 = exp(t2);

y2 = fft(x3)/sqrt(n1);
a2 = real(y2);
b2 = imag(y2);

sumiqua1 = 0;
for k = 1:15
sumiqua1 = sumiqua1 + a2(k+1)*cos(2*k*pi*t2) - b2(k+1)*sin(2*k*pi*t2);
end
p2 = (a2(1)/sqrt(n1)) + (2/sqrt(n1))*sumiqua1 + (a2(17)/sqrt(n1))*cos(n1*pi*t2);

figure
plot(t2,x3);
hold on
plot(t2,x3,'*');
hold on
plot(t2,p2);
hold off

% Problem 10.3.2

% Part a

x = [3 0 -3 0 3 0 -6 0];
n = 8;

dftinterp1(x,n);
dftfilter([0 1],x,4,8,50);
hold on
dftfilter([0 1],x,6,8,50);
hold on
dftfilter([0 1],x,8,8,50);

% Part b

x = [1 0 -2 1 3 0 -2 1];
n = 8;

hold off
figure
dftinterp1(x,n);
dftfilter([0 1],x,4,8,50);
hold on
dftfilter([0 1],x,6,8,50);
hold on
dftfilter([0 1],x,8,8,50);

% Part c

x = [1 2 3 1 -1 -1 -3 0];
n = 8;

hold off
figure
dftinterp1(x,n);
dftfilter([0 1],x,4,8,50);
hold on
dftfilter([0 1],x,6,8,50);
hold on
dftfilter([0 1],x,8,8,50);

% Part d

x = [4.2 5.0 3.8 1.6 -2 -1.4 0 1];
n = 8;

hold off
figure
dftinterp1(x,n);
dftfilter([0 1],x,4,8,50);
hold on
dftfilter([0 1],x,6,8,50);
hold on
dftfilter([0 1],x,8,8,50);


% Problem 10.3.3

hold off
figure
load handel.mat;
n = 2^14
x = y(1:n);
m = n/2;
dftfilter([0 1],x,m,n,n);

hold off
figure
n = 2^14
x = y(1:n);
m = n/4;
dftfilter([0 1],x,m,n,n);

hold off
figure
load handel.mat;
n = 2^14
x = y(1:n);
m = n/8;
dftfilter([0 1],x,m,n,n);

