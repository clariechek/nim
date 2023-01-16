clear all;
clc;

% driver for chooseLevelfView

[level] = chooseLevelIfView('VIEW');
fprintf("The level chosen is: %s\n",level);
