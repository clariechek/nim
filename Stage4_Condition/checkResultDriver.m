clear all;
clc;

% driver for checkResult

% Test 1
% Expected output: resume
fprintf('Result is: %s\n',checkResult(10));

% Test 2
% Expected output: resume
fprintf('Result is: %s\n',checkResult(1));

% Test 3
% Expected output: win
fprintf('Result is: %s\n',checkResult(0));

% Test 4
% Expected output: win
fprintf('Result is: %s\n',checkResult(-1));

% Test 5
% Expected output: resume
fprintf('Result is: %s\n',checkResult(100));

% Test 6
% Expected output: resume
fprintf('Result is: %s\n',checkResult(68));


