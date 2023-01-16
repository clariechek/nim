clear all;
clc;

% Define round, winnerVec and levelVec
round = 4;
winnerVec = [1 2 2 1];
levelVec = ["Easy", "Medium", "Easy", "Medium"];

% print game summary
fprintf('Round        Winner          Difficulty\n');
fprintf('-----------------------------------------------\n');

for r = 1:round
    fprintf('#%d            Player %d         %s\n', r,winnerVec(r),levelVec(r));
    fprintf('\n');
end
