clear; close all; clc;

t = 0 : 0.001 : 1;
f = 5;          % frequency
s = sin(2 * pi * f * t);
c = cos(2 * pi * f * t);

% Plot 2 signals into one figure page
h1 = plot(t, s, 'r');        % plot sine wave in red color
hold on;                % ensures the next line will not erase this figure
h2 = plot(t, c, 'b--');      % plot cosine wave in blue doted color

% Axes Labelling
xlabel('Time (sec)');
ylabel('Amplitued');

title('5 Hz Sine and Cosine Waves');
grid on;
% Legend
legend([h1, h2], 'Sine Wave', 'Cosine Wave')
