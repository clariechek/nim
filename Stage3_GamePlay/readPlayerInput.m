
function [ playerInput ] = readPlayerInput(totalStars)
% readPlayerInput Takes a parameter, totalStars and reads in the number 1 
% or 2 from each player, calls the calculateTotalStars function and outputs
% playerInput.

% create empty vector
playerInput = [];
for turn = 1:2
    % read input from each player 
    fprintf('Player %d''s turn:\n',turn);
    fprintf('How many stars do you want to remove?:\n');
    fprintf('Enter 1 or 2.\n');
    val = input('');
    
    % display error if input is not 1 or 2
    while ~(val==1 || val==2)
        fprintf('Wrong input.\n');
        fprintf('Player %d''s turn:\n',turn);
        fprintf('How many stars do you want to remove?:\n');
        fprintf('Enter 1 or 2.\n');
        val = input('');
    end
    
    % append playerInput
    playerInput = [playerInput val];
    totalStars = calculateTotalStars(totalStars,playerInput(turn));
end
fprintf('\n');
end