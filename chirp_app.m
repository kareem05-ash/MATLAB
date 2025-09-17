close all; clear; clc;

% % Parameters
% Fs = 1000;                  % 1000 oversampling rate
% T = 2;                      % 2 seconds time period
% t = 0 : 1/Fs : T-1/Fs;      % time vector
% low_f = 0;                  % lower limit of frequency
% upp_f = 250;                % upper lomit of frequency

% % Generate Chirp
% y_chirp = chirp(t, low_f, T, upp_f);

% % spectrogram
% spectrogram(y_chirp, upp_f+6, upp_f, upp_f+6, Fs, 'y_axis');
% title("Spectrogram Of A Linear Chirp Signal");


Fs = 1000;
t = 0:1/Fs:2; % 2-second duration

% Generate a chirp that sweeps from 0 Hz to 250 Hz over the 2 seconds
y_chirp = chirp(t, 0, 2, 250);

% Use spectrogram to visualize the changing frequency
spectrogram(y_chirp, 256, 250, 256, Fs, 'yaxis');
title('Spectrogram of a Linear Chirp Signal');