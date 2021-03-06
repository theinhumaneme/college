nPointDFT = input('Enter the N-point DFT to be calculated');
n = 0:1:nPointDFT-1;
dftSequence = input('Enter the Input Sequence');

% if the Input Sequence != N-Point Implement Zero Padding
if (length(dftSequence)<nPointDFT)
    dftSequence([length(dftSequence)+1:nPointDFT]) = zeros(1,nPointDFT-length(dftSequence));
end

k = 0:1:nPointDFT-1;
wn = exp((-1*j*2*pi)./nPointDFT);


kn = n'*k;
Z = wn.^kn;
X = dftSequence*Z;
mag = abs(X);
phase = angle(X)*(180/pi)
subplot(3,1,1);
stem(x,n);
xlabel('Frequency')
ylabel('Amplitude')
legend('19R11A04N1')
title('DFT Plot')
subplot(3,1,2);
stem(k,mag);
xlabel('Frequency')
ylabel('Magnitude')
legend('19R11A04N1')
title('Magnitude Plot of DFT')
subplot(3,1,3);
stem(k,phase)
xlabel('Frequency')
ylabel('Phase')
legend('19R11A04N1')
title('Phase Plot of DFT')

% Sample Input
% N-Point DFT = 8
% DFT Sequence = [1 3 4 5 6 0 0 0]