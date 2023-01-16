clear all;
clc;

% driver for printStarsLeft

% Test 1
% Expected Output: Number of stars left: 1
totalStars = 1;
printStarsLeft(totalStars);

% Test 2
% Expected Output: Number of stars left: 13
totalStars = 13;
printStarsLeft(totalStars);

% Test 3
% Expected Output: Number of stars left: 0
totalStars = 0;
printStarsLeft(totalStars);

% Test 4
% Expected Output: Number of stars left: -1
totalStars = -1;
printStarsLeft(totalStars);

% Test 5
% Expected Output: Number of stars left: 105
totalStars = 105;
printStarsLeft(totalStars);

% Test 6
% Expected Output: Number of stars left: 31
totalStars = 31;
printStarsLeft(totalStars);

