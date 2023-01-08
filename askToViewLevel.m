
function [ reply ] = askToViewLevel()
% askToViewLevel Reads in and outputs input from user to view difficulty 
% levels or not 

% reads input
fprintf('Do you want to view the difficulty levels?\n');
fprintf('Enter Y for Yes or N for No.\n');
reply = input("",'s');
fprintf('\n');

% display error if input is not Y or N
while ~(reply == "Y" || reply == "N")
    fprintf('Wrong input.\n');
    fprintf('Do you want to view the difficulty levels?\n');
    fprintf('Enter Y for Yes or N for No.\n');
    reply = input("",'s');
    fprintf('\n');
end
end