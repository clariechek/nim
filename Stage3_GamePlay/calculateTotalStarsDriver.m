clear all;
clc;

% driver for calculateTotalStars

% Test 1
% Expected output: 14
disp(calculateTotalStars(15,1));
fprintf('\n');

% Test 2
% Expected output: 13
disp(calculateTotalStars(15,2));
fprintf('\n');

% Test 3
% Expected output: 53
disp(calculateTotalStars(55,2));
fprintf('\n');

% Test 4
% Expected output: 119
disp(calculateTotalStars(120,1));
fprintf('\n');

% Test 5
% Expected output: 0
disp(calculateTotalStars(1,1));
fprintf('\n');

% Test 6
% Expected output: -1
disp(calculateTotalStars(1,2));
fprintf('\n');

