clear all;
clc;

% driver for wordLevel

% Test 1:
% Expected Output: The level is: Easy
level = 'E';
[lvl] = wordLevel(level);
fprintf('The level is: %s\n', lvl);


% Test 2:
% Expected Output: The level is: Medium
level = 'M';
[lvl] = wordLevel(level);
fprintf('The level is: %s\n', lvl);


% Test 3:
% Expected Output: The level is: Hard
level = 'H';
[lvl] = wordLevel(level);
fprintf('The level is: %s\n', lvl);
