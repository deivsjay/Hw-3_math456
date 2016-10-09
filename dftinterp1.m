function dftinterp1(x,n)

y = fft(x)/sqrt(n);
a0 = real(y(1));
a1 = real(y(2));
a2 = real(y(3));
a3 = real(y(4));
a4 = real(y(5));
b1 = imag(y(2));
b2 = imag(y(3));
b3 = imag(y(4));

end