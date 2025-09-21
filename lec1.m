close all; clear; clc;

% CT Cosine Representation
t = linspace(0, 1, 1000);
f = 5;      % 5 Hz frequency
CTCos = cos(2*pi*f * t);     % continous cosine signal

% CT Cosine Visualization
subplot(2, 1, 1);
plot(t, CTCos);         % plot CT cos
xlabel("time(sec)")
ylabel("Amplitude")
title("CT 5 Hz Cos Signal")
grid on;
hold on;

% DT Cosine Representation
Fs = 100;                       % in Hz
Ts = 1 / Fs;                    % in sec
T = 1 / 5;                      % 0.2 sec
n = 0 : Ts : 5*T;                 % time vector
DTCos = cos(2*pi*5 * n);

% DT Visualization
subplot(2, 1, 2);
stem(n, DTCos);         % stem DT cos
xlabel("n");
ylabel("Amplitude")
title("DT 5 Hz Cos Signal")
grid on;
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fs = 100;                       % in Hz
% Ts = 1 / Fs;                    % in sec
% n = 0 : 1/Ts : Fs-1;            % time vector
% DTCos = cos(2*pi*5 * n);
