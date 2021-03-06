% GENERATION OF SINUSOIDIAL WAVEFROM USING RECURSIVE DIFFERENCE EQUATIONS
% COSINE WAVE

signalFreq = input('Enter the signal Frequency');
samplingFreq = input('Enter the Sampling Frequency');
Wo = ((2*pi*signalFreq)/samplingFreq);
a = [1 -1*cos(Wo)];
b = [1 -2*cos(Wo) 1];
pulseDuration = input('Duration of over which signal is to be plotted');
n = 0:pulseDuration/samplingFreq:pulseDuration;
x = [1 zeros(1,length(n)-1)];
y=filter (a,b,x);
plot(n,y);
title("EXP1 Cosine Wave Generation");
legend('cosineWave');
xlabel('Time');
ylabel('Magnitude');

% Sample Input
%   signalFreq = 5
%   samplingFreq = 200
%   signalDuration = 1