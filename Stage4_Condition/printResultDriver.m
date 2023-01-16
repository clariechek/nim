clear all;
clc;

% driver for printResult

% Test 1
% Expected output: 'Player 1 wins!'
printResult("win",1);

% Test 2
% Expected output: 'Player 2 wins!'
printResult("win",2);

% Test 3
% Expected output: No output
printResult("resume",1);
