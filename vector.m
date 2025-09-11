%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This script is a practising on vectors on **MATLAB**
% A script creates a time vector, dirac function, and a sin signal
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc; clear; close all;
t = 0 : 0.001 : 1;                      % time axis with step equals 1 ns and range from 0 to 1 second
u = t>= 0;                              % unit step function equals 1 if time is positive and 0 elsewhere
n_low = -5;                             % the lower limit for the dirac delta function
n_high = 5;                             % the higher limit for the dirac delta function
n = n_low : n_high;                     % creates a vector of 'n' from -5 to 5 with step = 1
impulse_signal = zeros(1, length(n));   % creates a zero row vector with the same length of vector 'n'
impulse_signal(n == 0) = 1;             % that ensures all indecies which has value of n = 0 has a value 1 in impulse_signal
s = sin(2 * pi * 5 * t);                % sin(omega * t) === sin(2 * pi * freq * time)