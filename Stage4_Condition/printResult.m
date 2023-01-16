
function [ turn ] = printResult(result,turn)
% printResult Takes two parameters, result and turn, and prints and outputs
% which player wins if result is win 

if result == "win"
    fprintf('Player %d wins!\n',turn);
    fprintf('\n');
end
end