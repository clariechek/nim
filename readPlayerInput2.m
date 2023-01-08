
function [ playerInput,totalStars,result, turn ] = readPlayerInput2(totalStars)
% readPlayerInput2 Takes parameter, totalStars and reads in the number 1 or
% 2 from each player, and calls functions calculateTotalStars and
% checkResult, and outputs playerInput, totalStars, result and turn.

playerInput = [];
for j = 1:totalStars
    for i = 1:2
        fprintf('Player %d''s turn:\n',i);
        fprintf('How many stars do you want to remove?:\n');
        fprintf('Enter 1 or 2.\n');
        val = input('');
        
        % display error if input is not 1 or 2
        while ~(val==1 || val==2)
            fprintf('Wrong input.\n');
            fprintf('Player %d''s turn:\n',i);
            fprintf('How many stars do you want to remove?:\n');
            fprintf('Enter 1 or 2.\n');
            val = input('');
        end
        
        % append playerInput
        playerInput = [playerInput val];
        totalStars=calculateTotalStars(totalStars,val);
        [result] = checkResult(totalStars);
        if result == "win"
            turn = i;
            return
        end
    end
end
end