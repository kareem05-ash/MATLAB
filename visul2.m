% Kareem Ashraf Mostafa
clear; close all; clc;

t = 0 : 0.001 : 1;
f = 5;                  % frequency

% Unit Impulse Signal Implementation
low = -500; high = 500;
n = low : high;
impulse_sig = zeros(1, length(n));
impulse_sig(n == 0) = 1;
% Unit Step Signal Implementation
u = t >= 0;
% 5 Hz Sine Wave Implementation
s = sin(2 * pi * f * t);

% Plotting The Signals

% Unit Impulse
subplot(3, 1, 1);
h1 = stem(n, impulse_sig, 'g');
title('Unit Impulse')
xlabel('Time (sec)');
ylabel('Amplitude');
grid on;
hold on;
legend('Impulse Step')

% Unit Step
subplot(3, 1, 2);
h2 = plot(t, u, 'r');
title('Unit Step')
xlabel('Time (sec)');
ylabel('Amplitude');
grid on;
hold on;
legend('Unit Step')

% Sine Wave
subplot(3, 1, 3);
h3 = plot(t, s, 'b');
title('5 Hz Sine Wave')
xlabel('Time (sec)');
ylabel('Amplitude');
grid on;
hold on;
legend('Sin Wave')

