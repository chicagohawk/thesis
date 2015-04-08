clear
% fourier transform test
x = linspace(-3,3,71);
% Gaussian
k_2 =exp(-x.^2);

% other
k_1 = exp(-abs(x));
k_3 = exp(-abs(x).^3);

C_2 = zeros(71);
for ii = 1:71,
    for jj = 1:71,
        C_2(ii,jj) = exp(-abs(x(ii)-x(jj))^2);
    end
end
[A,B] = eig(C_2);

freq_1 = abs(fft(k_1));
freq_2 = abs(fft(k_2));

%plot(freq_1(1:20), 'black');
%hold on;
plot(sqrt(freq_2(1:20)), 'red');
hold on;

b = diag(B);
b = b(end:-1:1);
plot(abs(sqrt(b)));