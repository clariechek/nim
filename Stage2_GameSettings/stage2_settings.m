% Game of Nim - Stage 2 Settings
% Clarie Chek Yik Ling
% a1762428

clear all;
clc;

% game settings
reply = askToViewLevel();
displayLevels(reply);
level = chooseLevel();
level = chooseLevelIfView(level);
printLevelChoice(level);
[level,totalStars]=displayLevelChoice(level);
