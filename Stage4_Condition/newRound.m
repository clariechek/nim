
function [ playAgain ] = newRound()
% newRound Reads in and outputs input if player wants to play again 

fprintf('Do you want to play again?\n');
fprintf('Enter Y for Yes or N for No.\n');
playAgain = input('','s');
fprintf('\n');

% display error if input is not Y or N
while ~(playAgain == "Y" || playAgain == "N")
    fprintf('Wrong input.\n');
    fprintf('Do you want to play again?\n');
    fprintf('Enter Y for Yes or N for No.\n');
    playAgain = input('','s');
    fprintf('\n');
end
end