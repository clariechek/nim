clear all;
clc;

% driver for displayLevelChoice

% Test 1
% Expected output: E, 15
[level, totalStars] = displayLevelChoice('E');
disp(level);
disp(totalStars);

% Test 2
% Expected output: M, 55
[level, totalStars] = displayLevelChoice('M');
disp(level);
disp(totalStars);

% Test 3
% Expected output: H, 120
[level, totalStars] = displayLevelChoice('H');
disp(level);
disp(totalStars);

% Test 4
% Expected output: VIEW, 0
[level, totalStars] = displayLevelChoice('VIEW');
disp(level);
disp(totalStars);

