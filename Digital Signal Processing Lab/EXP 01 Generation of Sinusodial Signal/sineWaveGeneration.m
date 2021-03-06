% GENERATION OF SINUSOIDIAL WAVEFROM USING RECURSIVE DIFFERENCE EQUATIONS
% SINE WAVE


F = input('Enter the Signal Frequency');
Fs = input('Enter Sampling Frequency');
Wo = (2*pi*F)/Fs;
a = [0 sin(Wo)];
b = [1 -2*cos(Wo) 1];
T = input('Duration over which signal is to be plotted');
n = 0:T/Fs:T;
x = [1 zeros(1,length(n)-1)];
y=filter(a,b,x);
plot(n,y);
title("EXP1 Sine Wave Generation");
legend('sineWave');
xlabel('Time');
ylabel('Magnitude');

% Sample Input
%   signalFreq = 5
%   samplingFreq = 200
%   signalDuration = 1