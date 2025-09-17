% Sampling Parameters
Fs = 1000;      % Sample at 1000 Hz
T = 1;          % 1 second duaration
t = 0 : 1/Fs : T - 1/Fs;    % Time vector

% Signal Parameters
f = 5;          % 5 Hz signal
A = 1;        % 1.5 Amplitude
phi = pi/4;     % 45-degree phase shift

% Generate Signal
y = A * sin(2*pi*f* t + phi);

% Visualize
plot(t, y);
xlabel("Time (sec)");
ylabel("Amplitude");
title("5 Hz Sine Wave");
xlim([0 0.5]);      % Zoom-In to see a few cycles
grid on;