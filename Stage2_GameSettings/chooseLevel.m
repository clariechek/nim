
function [ level ] = chooseLevel()
% chooseLevel Reads in and outputs the user's input for difficulty level

% read input
fprintf('What level do you want to play?\n');
fprintf('Please enter E for Easy, M for Medium or H for Hard.\n');
fprintf('To view difficulty levels, enter VIEW.\n')
level = input("",'s');

% display error if input is not E, M, H, or VIEW
while ~(level == "E" || level == "M" || level == "H" || level == "VIEW")
    fprintf('\n');
    fprintf('Wrong input.\n');
    fprintf('What level do you want to play?\n');
    fprintf('Please enter E for Easy, M for Medium or H for Hard.\n');
    fprintf('To view difficulty levels, enter VIEW.\n')
    level = input("",'s');
end
end