close all; clear; clc;
% Parameters
Fs = 1000;              % 1000 oversampling rate
T = 1;                  % 1 second time period
t = 0 : 1/Fs : T-1/Fs;  % time vector
f = 4;                  % 4 Hz frequency
DC = 50;                % 50 percent duty cycle

% Signal Generation
y = square(2*pi*f*t, DC);

% Visulization
plot(t, y);
ylim([-1.5, 1.5]);      % adjust y-axis to see the signals clearly
xlim([-.25, 1.25]);          % adjust x-axis to see the signals clearly
xlabel("Time (sec)");
title("4 Hz Square Wave with 50% DC");
grid on;