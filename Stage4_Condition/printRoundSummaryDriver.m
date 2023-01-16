clear all;
clc;

% driver for printRoundSummary

% Test 1
% Expected output:
% Move       Player 1        Player 2
% -----------------------------------------------
% #1            2               2
% 
% #2            1               1
% 
% #3            1               1
% 
% #4            1               2
% 
% #5            2               1
% 
% #6            1               0
playerInput = [2 2 1 1 1 1 1 2 2 1 1];
printRoundSummary(playerInput);

% Test 2
% Expected output:
% Move       Player 1        Player 2
% -----------------------------------------------
% #1            1               1
% 
% #2            2               1
% 
% #3            2               2
% 
% #4            1               0
playerInput = [1 1 2 1 2 2 1];
printRoundSummary(playerInput);

% Test 3
% Expected output:
% Move       Player 1        Player 2
% -----------------------------------------------
% #1            2               1
% 
% #2            2               1
% 
% #3            2               2
playerInput = [2 1 2 1 2 2];
printRoundSummary(playerInput);



