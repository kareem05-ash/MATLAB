close all; clear; clc;

% Parameters
Fs = 1000;              % 1000 oversampling rate
f = 10;                 % 10 Hz
T = 1;                  % 1 second time period
t = 0 : 1/Fs : T-1/Fs;  % time vector
n = length(t);

% Clean 10 Hz Sine Wave
clean_sig = sin(2*pi*f * t);

% Gauss Noise
noise_pw = 0.5;         % Variance (power) of the noise
noise = sqrt(noise_pw) + randn(1, n);

% Add The Noise To The Clean Signal
noisy_sig = clean_sig + noise;

% Visulization
h2 = plot(t, noisy_sig, 'r');       % plot noisy singal in red  color
hold;
h1 = plot(t, clean_sig, 'g');       % plot clean signal in blue color
hold;
grid on;
xlabel("Time (sec)");
title("Clean & Noisy Sine Wave");
legend([h1, h2], 'clean', 'noisy');