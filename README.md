# MATLAB Commands

This file contains all the important commands to build a project in **MATLAB**

---         

## Table Of Contents

- [Basic Commands](#basic-commands)
- [Vectors & Metrices](#vectors--metrices)
- [Visulization_Plotting](#visulization_plotting)
- [DSP Specific Operations & Functions](#dsp-specific-operations--functions)
- [Basic Programming](#basic-programming)

---         

## Basic Commands   

| **Command**           |   **Description**                                                                                                                                 |
|-----------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| **clc**               |   It clears the command window. It's just like 'cls' / 'clear' in *Windows* / *Linux* terminal                                                    |
| __clear/clear */clear all__|   It clears the whole workspace (It deletes all variables)                                                                                        |
| **clear_var_name**    |   It clears a specific variable. e.g., `clear x`                                                                                                  |
| **close all**         |   It closes all open figure windows                                                                                                               |
| **help command**      |   It displays help report for a specific command. e.g., `help plot`                                                                               |
| **%**                 |   It's used for adding a line of comment in your script                                                                                           |
| **;**                 |   It suppresses output. If you type `x = 5;`, the value (5) will not be printed in the command window. If you type `x = 5` without (;), it will   |

---         

## Vectors & Metrices

- `x = [1 2 3 ... n] or [1, 2, 3, ..., n]`    => creates a **ROW** vector. Size: 1 x n
- `x = [1; 2; 3; ...; n;]`                    => creates a **COL** vector. Size: n x 1
- `t = start : step : end`                    => creates a **Range** vector. size: 1 x [(end - start) / step].
    - It's important for time axis
    - If 'step' is missing, it's considered 1
    - e.g., t = 0 : 0.2 : 1     => t = [0 .2 .4 .6 .8 1.0]. Its size: z x [(1 - 0) / 0.2] === 1 x 5
    - e.g., n = 1:5             => n = [1 2 3 4 5]
- `lenspace(start, end, n)`       => crates a **ROW** vector with exactly n number of points
    - e.g., f = linspace(0, 5, 6)   => f = [0 1 2 3 4 5] 
    - e.g., f = linspace(1, 10, 20) => f = [1 2 3 4 5 6 7 8 9 10]
    - e.g., f = linspace(0, 10, 6)  => f = [0 2 4 6 8 10]
    - e.g., f = linspace(0, 2, 5)   => f = [0 0.5 1.0 1.5 2.0]
- `length(x)`     => It returns the number of elements in vector `x`
- `x(i)`          => Accesses the i-th element of vector `x` (The first index is `1` not `0`)
    - e.g., x = [20 25 30 35 40 45 50]
        - length(x) => 7
        - `x(1)`      => 20
        - `x(2)`      => 25
        - `x(3)`      => 30
        - `x(4)`      => 35
        - `x(5)`      => 40
        - `x(6)`      => 45
        - `x(7)`      => 50

---         

## Visulization_Plotting

- `plot(x, y)`    => Creates a 2D line plot of vector `y` vs. vector `x`
- `stem(x, y)`    => Creates a discrete sequence/system plot. This is more appropriate for **DSP** than `plot`
- `xlabel('Time (sec)')`        => This line of code labels the x-axis as Time axis and the units is seconds
- `ylabel('Amplitued(mV)')`     => This line of code labels the y-axis as Amplitued axis
- `title('My Sine Wave')`       => Adds a title for the plot not to the figure block
- `legend([sig1_name, sig2_name], 'sig1_legend', 'sig2_legend')`  => Adds a legend. Mark which signal has the red color as an expample.
    - e.g., 
        ```m
            h1 = plot(t, sin(2 * pi * 5 * t), 'r');     % plots sine wave in red color
            hold on;        % ensures that the next line won't erase the sine wave
            h1 = plot(t, sin(2 * pi * 5 * t), 'b--');   % plots sine wave in doted blue color
            % Adding legends
            legend([h1, h2], 'sin wave', 'cos wave')
        ```
- `grid on`                     => Adds a grid to the plot
- `figure`                      => Opens a new figure window
- `subplot(m, n, p)`            => Creates an `m`-by-`n` grid of plots and makes the `p-th` one active
---     

## DSP Specific Operations & Functions



---         

## Basic Programming



---         